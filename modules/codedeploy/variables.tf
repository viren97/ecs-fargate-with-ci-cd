variable "compute_platform" {
  description = "compute the platform"
  type        = string
  default     = "ECS"
}

variable "name" {
  description = "name of the code deployment"
  type        = string
}

variable "deployment_config_name" {
  description = "deployment config name"
  type        = string
}

variable "deployment_group_name" {
  description = "deployment group name"
  type        = string
}

variable "tg_blue_name" {
  description = "target group blue name"
  type        = string
}

variable "tg_green_name" {
  description = "target group green name"
  type        = string
}

variable "listener_arn" {
  description = "front end listener arn"
  type        = string
}

variable "ecs_service_cluster_name" {
  description = "ecs service cluster name"
  type        = string
}

variable "ecs_service_name" {
  description = "ecs service name"
  type        = string
}

variable "codedeploy_role_arn" {
  description = "code deploy role arn"
  type        = string
}
