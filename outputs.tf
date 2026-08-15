output "imagebuilder_image_pipelines_id" {
  description = "Map of id values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "imagebuilder_image_pipelines_arn" {
  description = "Map of arn values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "imagebuilder_image_pipelines_container_recipe_arn" {
  description = "Map of container_recipe_arn values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.container_recipe_arn if v.container_recipe_arn != null && length(v.container_recipe_arn) > 0 }
}
output "imagebuilder_image_pipelines_date_created" {
  description = "Map of date_created values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.date_created if v.date_created != null && length(v.date_created) > 0 }
}
output "imagebuilder_image_pipelines_date_last_run" {
  description = "Map of date_last_run values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.date_last_run if v.date_last_run != null && length(v.date_last_run) > 0 }
}
output "imagebuilder_image_pipelines_date_next_run" {
  description = "Map of date_next_run values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.date_next_run if v.date_next_run != null && length(v.date_next_run) > 0 }
}
output "imagebuilder_image_pipelines_date_updated" {
  description = "Map of date_updated values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.date_updated if v.date_updated != null && length(v.date_updated) > 0 }
}
output "imagebuilder_image_pipelines_description" {
  description = "Map of description values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.description if v.description != null && length(v.description) > 0 }
}
output "imagebuilder_image_pipelines_distribution_configuration_arn" {
  description = "Map of distribution_configuration_arn values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.distribution_configuration_arn if v.distribution_configuration_arn != null && length(v.distribution_configuration_arn) > 0 }
}
output "imagebuilder_image_pipelines_enhanced_image_metadata_enabled" {
  description = "Map of enhanced_image_metadata_enabled values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.enhanced_image_metadata_enabled if v.enhanced_image_metadata_enabled != null }
}
output "imagebuilder_image_pipelines_execution_role" {
  description = "Map of execution_role values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.execution_role if v.execution_role != null && length(v.execution_role) > 0 }
}
output "imagebuilder_image_pipelines_image_recipe_arn" {
  description = "Map of image_recipe_arn values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.image_recipe_arn if v.image_recipe_arn != null && length(v.image_recipe_arn) > 0 }
}
output "imagebuilder_image_pipelines_image_scanning_configuration" {
  description = "Map of image_scanning_configuration values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => one(v.image_scanning_configuration) if v.image_scanning_configuration != null && length(v.image_scanning_configuration) > 0 }
}
output "imagebuilder_image_pipelines_image_tests_configuration" {
  description = "Map of image_tests_configuration values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => one(v.image_tests_configuration) if v.image_tests_configuration != null && length(v.image_tests_configuration) > 0 }
}
output "imagebuilder_image_pipelines_infrastructure_configuration_arn" {
  description = "Map of infrastructure_configuration_arn values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.infrastructure_configuration_arn if v.infrastructure_configuration_arn != null && length(v.infrastructure_configuration_arn) > 0 }
}
output "imagebuilder_image_pipelines_logging_configuration" {
  description = "Map of logging_configuration values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => one(v.logging_configuration) if v.logging_configuration != null && length(v.logging_configuration) > 0 }
}
output "imagebuilder_image_pipelines_name" {
  description = "Map of name values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.name if v.name != null && length(v.name) > 0 }
}
output "imagebuilder_image_pipelines_platform" {
  description = "Map of platform values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.platform if v.platform != null && length(v.platform) > 0 }
}
output "imagebuilder_image_pipelines_region" {
  description = "Map of region values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.region if v.region != null && length(v.region) > 0 }
}
output "imagebuilder_image_pipelines_schedule" {
  description = "Map of schedule values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => one(v.schedule) if v.schedule != null && length(v.schedule) > 0 }
}
output "imagebuilder_image_pipelines_status" {
  description = "Map of status values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.status if v.status != null && length(v.status) > 0 }
}
output "imagebuilder_image_pipelines_tags" {
  description = "Map of tags values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "imagebuilder_image_pipelines_tags_all" {
  description = "Map of tags_all values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "imagebuilder_image_pipelines_workflow" {
  description = "Map of workflow values across all imagebuilder_image_pipelines, keyed the same as var.imagebuilder_image_pipelines"
  value       = { for k, v in aws_imagebuilder_image_pipeline.imagebuilder_image_pipelines : k => v.workflow if v.workflow != null && length(v.workflow) > 0 }
}

