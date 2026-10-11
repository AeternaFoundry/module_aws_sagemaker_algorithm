variable "sagemaker_algorithms" {
  description = <<EOT
Map of sagemaker_algorithms, attributes below
Required:
    - algorithm_name
Optional:
    - algorithm_description
    - certify_for_marketplace
    - region
    - tags
    - inference_specification (block):
        - containers (optional, block):
            - additional_s3_data_source (optional, block):
                - compression_type (optional)
                - etag (optional)
                - s3_data_type (required)
                - s3_uri (required)
            - base_model (optional, block):
                - hub_content_name (optional)
                - hub_content_version (optional)
                - recipe_name (optional)
            - container_hostname (optional)
            - environment (optional)
            - framework (optional)
            - framework_version (optional)
            - image (optional)
            - image_digest (optional)
            - is_checkpoint (optional)
            - model_data_etag (optional)
            - model_data_source (optional, block):
                - s3_data_source (optional, block):
                    - compression_type (required)
                    - etag (optional)
                    - hub_access_config (optional, block):
                        - hub_content_arn (optional)
                    - manifest_etag (optional)
                    - manifest_s3_uri (optional)
                    - model_access_config (optional, block):
                        - accept_eula (optional)
                    - s3_data_type (required)
                    - s3_uri (required)
            - model_data_url (optional)
            - model_input (optional, block):
                - data_input_config (optional)
            - nearest_model_name (optional)
            - product_id (optional)
        - supported_content_types (optional)
        - supported_realtime_inference_instance_types (optional)
        - supported_response_mime_types (optional)
        - supported_transform_instance_types (optional)
    - training_specification (block):
        - additional_s3_data_source (optional, block):
            - compression_type (optional)
            - etag (optional)
            - s3_data_type (required)
            - s3_uri (required)
        - metric_definitions (optional, block):
            - name (required)
            - regex (required)
        - supported_hyper_parameters (optional, block):
            - default_value (optional)
            - description (optional)
            - is_required (optional)
            - is_tunable (optional)
            - name (required)
            - range (optional, block):
                - categorical_parameter_range_specification (optional, block):
                    - values (required)
                - continuous_parameter_range_specification (optional, block):
                    - max_value (required)
                    - min_value (required)
                - integer_parameter_range_specification (optional, block):
                    - max_value (required)
                    - min_value (required)
            - type (required)
        - supported_training_instance_types (required)
        - supported_tuning_job_objective_metrics (optional, block):
            - metric_name (required)
            - type (required)
        - supports_distributed_training (optional)
        - training_channels (optional, block):
            - description (optional)
            - is_required (optional)
            - name (required)
            - supported_compression_types (optional)
            - supported_content_types (required)
            - supported_input_modes (required)
        - training_image (required)
        - training_image_digest (optional)
    - validation_specification (block):
        - validation_profiles (optional, block):
            - profile_name (required)
            - training_job_definition (optional, block):
                - hyper_parameters (optional)
                - input_data_config (optional, block):
                    - channel_name (required)
                    - compression_type (optional)
                    - content_type (optional)
                    - data_source (optional, block):
                        - file_system_data_source (optional, block):
                            - directory_path (required)
                            - file_system_access_mode (required)
                            - file_system_id (required)
                            - file_system_type (required)
                        - s3_data_source (optional, block):
                            - attribute_names (optional)
                            - hub_access_config (optional, block):
                                - hub_content_arn (optional)
                            - instance_group_names (optional)
                            - model_access_config (optional, block):
                                - accept_eula (optional)
                            - s3_data_distribution_type (optional)
                            - s3_data_type (required)
                            - s3_uri (required)
                    - input_mode (optional)
                    - record_wrapper_type (optional)
                    - shuffle_config (optional, block):
                        - seed (required)
                - output_data_config (optional, block):
                    - compression_type (optional)
                    - kms_key_id (optional)
                    - s3_output_path (required)
                - resource_config (optional, block):
                    - instance_count (optional)
                    - instance_groups (optional, block):
                        - instance_count (required)
                        - instance_group_name (required)
                        - instance_type (required)
                    - instance_placement_config (optional, block):
                        - enable_multiple_jobs (optional)
                        - placement_specifications (optional, block):
                            - instance_count (required)
                            - ultra_server_id (optional)
                    - instance_type (optional)
                    - keep_alive_period_in_seconds (optional)
                    - training_plan_arn (optional)
                    - volume_kms_key_id (optional)
                    - volume_size_in_gb (optional)
                - stopping_condition (optional, block):
                    - max_pending_time_in_seconds (optional)
                    - max_runtime_in_seconds (optional)
                    - max_wait_time_in_seconds (optional)
                - training_input_mode (required)
            - transform_job_definition (optional, block):
                - batch_strategy (optional)
                - environment (optional)
                - max_concurrent_transforms (optional)
                - max_payload_in_mb (optional)
                - transform_input (optional, block):
                    - compression_type (optional)
                    - content_type (optional)
                    - data_source (optional, block):
                        - s3_data_source (optional, block):
                            - s3_data_type (required)
                            - s3_uri (required)
                    - split_type (optional)
                - transform_output (optional, block):
                    - accept (optional)
                    - assemble_with (optional)
                    - kms_key_id (optional)
                    - s3_output_path (required)
                - transform_resources (optional, block):
                    - instance_count (required)
                    - instance_type (required)
                    - transform_ami_version (optional)
                    - volume_kms_key_id (optional)
        - validation_role (required)
EOT

  type = map(object({
    algorithm_name          = string
    algorithm_description   = optional(string)
    certify_for_marketplace = optional(bool)
    region                  = optional(string)
    tags                    = optional(map(string))
    inference_specification = optional(list(object({
      containers = optional(list(object({
        additional_s3_data_source = optional(list(object({
          compression_type = optional(string)
          etag             = optional(string)
          s3_data_type     = string
          s3_uri           = string
        })))
        base_model = optional(list(object({
          hub_content_name    = optional(string)
          hub_content_version = optional(string)
          recipe_name         = optional(string)
        })))
        container_hostname = optional(string)
        environment        = optional(map(string))
        framework          = optional(string)
        framework_version  = optional(string)
        image              = optional(string)
        image_digest       = optional(string)
        is_checkpoint      = optional(bool)
        model_data_etag    = optional(string)
        model_data_source = optional(list(object({
          s3_data_source = optional(list(object({
            compression_type = string
            etag             = optional(string)
            hub_access_config = optional(list(object({
              hub_content_arn = optional(string)
            })))
            manifest_etag   = optional(string)
            manifest_s3_uri = optional(string)
            model_access_config = optional(list(object({
              accept_eula = optional(bool)
            })))
            s3_data_type = string
            s3_uri       = string
          })))
        })))
        model_data_url = optional(string)
        model_input = optional(list(object({
          data_input_config = optional(string)
        })))
        nearest_model_name = optional(string)
        product_id         = optional(string)
      })))
      supported_content_types                     = optional(list(string))
      supported_realtime_inference_instance_types = optional(list(string))
      supported_response_mime_types               = optional(list(string))
      supported_transform_instance_types          = optional(list(string))
    })))
    training_specification = optional(list(object({
      additional_s3_data_source = optional(list(object({
        compression_type = optional(string)
        etag             = optional(string)
        s3_data_type     = string
        s3_uri           = string
      })))
      metric_definitions = optional(list(object({
        name  = string
        regex = string
      })))
      supported_hyper_parameters = optional(list(object({
        default_value = optional(string)
        description   = optional(string)
        is_required   = optional(bool)
        is_tunable    = optional(bool)
        name          = string
        range = optional(list(object({
          categorical_parameter_range_specification = optional(list(object({
            values = list(string)
          })))
          continuous_parameter_range_specification = optional(list(object({
            max_value = string
            min_value = string
          })))
          integer_parameter_range_specification = optional(list(object({
            max_value = string
            min_value = string
          })))
        })))
        type = string
      })))
      supported_training_instance_types = list(string)
      supported_tuning_job_objective_metrics = optional(list(object({
        metric_name = string
        type        = string
      })))
      supports_distributed_training = optional(bool)
      training_channels = optional(list(object({
        description                 = optional(string)
        is_required                 = optional(bool)
        name                        = string
        supported_compression_types = optional(list(string))
        supported_content_types     = list(string)
        supported_input_modes       = list(string)
      })))
      training_image        = string
      training_image_digest = optional(string)
    })))
    validation_specification = optional(list(object({
      validation_profiles = optional(list(object({
        profile_name = string
        training_job_definition = optional(list(object({
          hyper_parameters = optional(map(string))
          input_data_config = optional(list(object({
            channel_name     = string
            compression_type = optional(string)
            content_type     = optional(string)
            data_source = optional(list(object({
              file_system_data_source = optional(list(object({
                directory_path          = string
                file_system_access_mode = string
                file_system_id          = string
                file_system_type        = string
              })))
              s3_data_source = optional(list(object({
                attribute_names = optional(list(string))
                hub_access_config = optional(list(object({
                  hub_content_arn = optional(string)
                })))
                instance_group_names = optional(list(string))
                model_access_config = optional(list(object({
                  accept_eula = optional(bool)
                })))
                s3_data_distribution_type = optional(string)
                s3_data_type              = string
                s3_uri                    = string
              })))
            })))
            input_mode          = optional(string)
            record_wrapper_type = optional(string)
            shuffle_config = optional(list(object({
              seed = number
            })))
          })))
          output_data_config = optional(list(object({
            compression_type = optional(string)
            kms_key_id       = optional(string)
            s3_output_path   = string
          })))
          resource_config = optional(list(object({
            instance_count = optional(number)
            instance_groups = optional(list(object({
              instance_count      = number
              instance_group_name = string
              instance_type       = string
            })))
            instance_placement_config = optional(list(object({
              enable_multiple_jobs = optional(bool)
              placement_specifications = optional(list(object({
                instance_count  = number
                ultra_server_id = optional(string)
              })))
            })))
            instance_type                = optional(string)
            keep_alive_period_in_seconds = optional(number)
            training_plan_arn            = optional(string)
            volume_kms_key_id            = optional(string)
            volume_size_in_gb            = optional(number)
          })))
          stopping_condition = optional(list(object({
            max_pending_time_in_seconds = optional(number)
            max_runtime_in_seconds      = optional(number)
            max_wait_time_in_seconds    = optional(number)
          })))
          training_input_mode = string
        })))
        transform_job_definition = optional(list(object({
          batch_strategy            = optional(string)
          environment               = optional(map(string))
          max_concurrent_transforms = optional(number)
          max_payload_in_mb         = optional(number)
          transform_input = optional(list(object({
            compression_type = optional(string)
            content_type     = optional(string)
            data_source = optional(list(object({
              s3_data_source = optional(list(object({
                s3_data_type = string
                s3_uri       = string
              })))
            })))
            split_type = optional(string)
          })))
          transform_output = optional(list(object({
            accept         = optional(string)
            assemble_with  = optional(string)
            kms_key_id     = optional(string)
            s3_output_path = string
          })))
          transform_resources = optional(list(object({
            instance_count        = number
            instance_type         = string
            transform_ami_version = optional(string)
            volume_kms_key_id     = optional(string)
          })))
        })))
      })))
      validation_role = string
    })))
  }))
}

