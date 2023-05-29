variable "name" {
  description = "name of the code build"
  type        = string
}

variable "description" {
  description = "description of the code build"
  type        = string
}

variable "build_timeout" {
  description = "build timeout"
  type        = number
  default     = 10
}

variable "log_group_name" {
  description = "log group name"
  type        = string
}

variable "log_stream_name" {
  description = "log stream name"
  type        = string
}

variable "buildspec_file_name" {
  description = "build spec file location"
  type        = string
}

variable "BuildArtifact" {
  description = "build artifact name"
  type        = string
  default     = "BuildArtifact"
}

variable "s3_bucket" {
  description = "s3 bucket location"
  type        = string
}

variable "s3_bucket_id" {
  description = "s3 bucket location"
  type        = string
}

variable "service_role_arn" {
  description = "service role arn to use"
  type        = string
}

variable "region" {
  type = string
}

variable "image_repo_name" {
  type = string
}
variable "image_tag" {
  type = string
}
variable "account_id" {
  type = string
}
variable "service_name" {
  type = string
}
variable "environment" {
  type = string
}
