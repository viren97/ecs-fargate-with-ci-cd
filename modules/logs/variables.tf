variable "group_name" {
  description = "log group name"
  type        = string
}

variable "stream_name" {
  description = "log stream name"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
