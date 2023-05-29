variable "name" {
  description = "cluster name"
  type        = string
}

variable "task_family" {
  description = "cluster name"
  type        = string
}

variable "fargate_cpu" {
  description = "fargate CPU"
  type        = string
}

variable "fargate_memory" {
  description = "fargate memory"
  type        = string
}

variable "app_port" {
  description = "app port"
  type        = string
}

variable "aws_region" {
  description = "default region"
  type        = string
  default     = "ap-south-1"
}

variable "app_image" {
  description = "app image"
  type        = string
}

variable "service_name" {
  description = "service name"
  type        = string
}

variable "deployment_controller_type" {
  description = "deployment controller type"
  type        = string
}

variable "app_count" {
  description = "app count"
  type        = number
  default     = 1
}

variable "log_group_name" {
  description = "log group name"
  type        = string
}

variable "app_name" {
  description = "app name"
  type        = string
}

variable "ecs_task_execution_role_arn" {
  description = "ecs task execution role arn"
  type        = string
}

variable "ecs_task_role_arn" {
  description = "ecs task role arn"
  type        = string
}

variable "ecs_task_sg_id" {
  description = "ecs task sg id"
  type        = string
}

variable "private_subnet_ids" {
  description = "private subnet ids"
  type        = list(string)
}

variable "tg_blue_id" {
  description = "target group blue id"
  type        = string
}

variable "contianer_name" {
  description = "container name"
  type        = string
}

variable "NODE_ENV" {
  default = "production"
  type    = string
}

variable "APP_ENV" {
  default = "production"
  type    = string
}

variable "APP_VERSION" {
  default = "0.0.0"
  type    = string
}

