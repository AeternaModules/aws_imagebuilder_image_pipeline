variable "imagebuilder_image_pipelines" {
  description = <<EOT
Map of imagebuilder_image_pipelines, attributes below
Required:
    - infrastructure_configuration_arn
    - name
Optional:
    - container_recipe_arn
    - description
    - distribution_configuration_arn
    - enhanced_image_metadata_enabled
    - execution_role
    - image_recipe_arn
    - region
    - status
    - tags
    - tags_all
    - image_scanning_configuration (block):
        - ecr_configuration (optional, block):
            - container_tags (optional)
            - repository_name (optional)
        - image_scanning_enabled (optional)
    - image_tests_configuration (block):
        - image_tests_enabled (optional)
        - timeout_minutes (optional)
    - logging_configuration (block):
        - image_log_group_name (optional)
        - pipeline_log_group_name (optional)
    - schedule (block):
        - pipeline_execution_start_condition (optional)
        - schedule_expression (required)
        - timezone (optional)
    - workflow (block):
        - on_failure (optional)
        - parallel_group (optional)
        - parameter (optional, block):
            - name (required)
            - value (required)
        - workflow_arn (required)
EOT

  type = map(object({
    infrastructure_configuration_arn = string
    name                             = string
    container_recipe_arn             = optional(string)
    description                      = optional(string)
    distribution_configuration_arn   = optional(string)
    enhanced_image_metadata_enabled  = optional(bool)
    execution_role                   = optional(string)
    image_recipe_arn                 = optional(string)
    region                           = optional(string)
    status                           = optional(string)
    tags                             = optional(map(string))
    tags_all                         = optional(map(string))
    image_scanning_configuration = optional(object({
      ecr_configuration = optional(object({
        container_tags  = optional(set(string))
        repository_name = optional(string)
      }))
      image_scanning_enabled = optional(bool)
    }))
    image_tests_configuration = optional(object({
      image_tests_enabled = optional(bool)
      timeout_minutes     = optional(number)
    }))
    logging_configuration = optional(object({
      image_log_group_name    = optional(string)
      pipeline_log_group_name = optional(string)
    }))
    schedule = optional(object({
      pipeline_execution_start_condition = optional(string)
      schedule_expression                = string
      timezone                           = optional(string)
    }))
    workflow = optional(list(object({
      on_failure     = optional(string)
      parallel_group = optional(string)
      parameter = optional(list(object({
        name  = string
        value = string
      })))
      workflow_arn = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_image_pipelines : (
        v.container_recipe_arn == null || (can(regex("^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):container-recipe/[0-9a-z_-]+/\\d+\\.\\d+\\.\\d+$", v.container_recipe_arn)))
      )
    ])
    error_message = "valid container recipe ARN must be provided"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_image_pipelines : (
        v.distribution_configuration_arn == null || (can(regex("^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):distribution-configuration/[0-9a-z_-]+$", v.distribution_configuration_arn)))
      )
    ])
    error_message = "valid distribution configuration ARN must be provided"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_image_pipelines : (
        v.image_recipe_arn == null || (can(regex("^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):image-recipe/[0-9a-z_-]+/\\d+\\.\\d+\\.\\d+$", v.image_recipe_arn)))
      )
    ])
    error_message = "valid image recipe ARN must be provided"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_image_pipelines : (
        v.image_tests_configuration == null || (v.image_tests_configuration.timeout_minutes == null || (v.image_tests_configuration.timeout_minutes >= 60 && v.image_tests_configuration.timeout_minutes <= 1440))
      )
    ])
    error_message = "must be between 60 and 1440"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_image_pipelines : (
        can(regex("^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):infrastructure-configuration/[0-9a-z_-]+$", v.infrastructure_configuration_arn))
      )
    ])
    error_message = "valid infrastructure configuration ARN must be provided"
  }
  validation {
    condition = alltrue([
      for k, v in var.imagebuilder_image_pipelines : (
        v.workflow == null || alltrue([for item in v.workflow : (item.parallel_group == null || (length(item.parallel_group) >= 1 && length(item.parallel_group) <= 100))])
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

