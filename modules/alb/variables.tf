
variable "health_check_path" {
  description = "health check path"
  type        = string
  default     = "/"
}

variable "name" {
  description = "name of the alb"
  type        = string
}

variable "tg1_name" {
  description = "target group 1 name"
  type        = string
  default     = "blue"
}

variable "tg2_name" {
  description = "target group 2 name"
  type        = string
  default     = "green"
}

variable "app_port" {
  description = "app port to be used on all the resources"
  type        = string
}

variable "https_certificate_arn" {
  description = "certificate to be used on all the resources"
  type        = string
}

variable "vpc_id" {
  description = "vpc id to be used on all the resources"
  type        = string
}

variable "public_subnets_ids" {
  description = "public subnets to be used on all the resources"
  type        = list(string)
  default     = []
}

variable "lg_sg_name" {
  description = "load balancer sg name to be used on all the resources"
  type        = string
  default     = ""
}

variable "ecs_task_sg_name" {
  description = "ecs task sg name to be used on all the resources"
  type        = string
  default     = ""
}
