
variable "s3_bucket_arn" {
  type        = string
  description = "s3 bucket arn"
}

variable "code_start_arn" {
  type        = string
  description = "code start connection arn"
}

variable "codepipeline_role_name" {
  type        = string
  description = "code pipeline role name"
}

variable "codebuild_role_name" {
  type        = string
  description = "code build role name"
}

variable "codedeploy_role_name" {
  type        = string
  description = "code deploy role name"
}

variable "ecs_task_execution_role_name" {
  type        = string
  description = "ecs task execution role name"
}

variable "ecs_task_role_name" {
  type        = string
  description = "ecs task role name"
}
