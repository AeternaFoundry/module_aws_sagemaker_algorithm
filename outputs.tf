output "sagemaker_algorithms_algorithm_description" {
  description = "Map of algorithm_description values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.algorithm_description if v.algorithm_description != null && length(v.algorithm_description) > 0 }
}
output "sagemaker_algorithms_algorithm_name" {
  description = "Map of algorithm_name values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.algorithm_name if v.algorithm_name != null && length(v.algorithm_name) > 0 }
}
output "sagemaker_algorithms_algorithm_status" {
  description = "Map of algorithm_status values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.algorithm_status if v.algorithm_status != null && length(v.algorithm_status) > 0 }
}
output "sagemaker_algorithms_arn" {
  description = "Map of arn values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_algorithms_certify_for_marketplace" {
  description = "Map of certify_for_marketplace values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.certify_for_marketplace if v.certify_for_marketplace != null }
}
output "sagemaker_algorithms_creation_time" {
  description = "Map of creation_time values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.creation_time if v.creation_time != null && length(v.creation_time) > 0 }
}
output "sagemaker_algorithms_inference_specification" {
  description = "Map of inference_specification values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.inference_specification if v.inference_specification != null && length(v.inference_specification) > 0 }
}
output "sagemaker_algorithms_product_id" {
  description = "Map of product_id values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.product_id if v.product_id != null && length(v.product_id) > 0 }
}
output "sagemaker_algorithms_region" {
  description = "Map of region values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_algorithms_tags" {
  description = "Map of tags values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_algorithms_tags_all" {
  description = "Map of tags_all values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "sagemaker_algorithms_training_specification" {
  description = "Map of training_specification values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.training_specification if v.training_specification != null && length(v.training_specification) > 0 }
}
output "sagemaker_algorithms_validation_specification" {
  description = "Map of validation_specification values across all sagemaker_algorithms, keyed the same as var.sagemaker_algorithms"
  value       = { for k, v in aws_sagemaker_algorithm.sagemaker_algorithms : k => v.validation_specification if v.validation_specification != null && length(v.validation_specification) > 0 }
}

