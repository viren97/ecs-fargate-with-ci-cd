variable "subnet_group_name" {
  type = string
}

variable "cluster_id" {
  type = string

}

variable "sg_id" {
  type = string

}

variable "engine" {
  type = string

}

variable "node_type" {
  type = string
}

variable "num_cache_nodes" {
  default = 1
  type    = number
}

variable "public_subnet_ids" {
  type    = list(string)
  default = []
}
