variable "clone_type" {
  type    = string
  default = "CODEBUILD_CLONE_REF"
}

variable "name" {
  type    = string
  default = ""
}

variable "repository_name" {
  type    = string
  default = ""
}

variable "branch_name" {
  type    = string
  default = ""
}

variable "connection_arn" {
  type    = string
  default = ""
}

variable "destination_artifact" {
  type = list(string)
  default = [
    "DefinitionArtifact",
    "ImageArtifact"
  ]
}

variable "source_artifact" {
  type    = list(string)
  default = ["SourceArtifact"]
}


variable "task_definition_template" {
  type    = string
  default = ""
}

variable "appspec_template" {
  type    = string
  default = ""
}

variable "codebuild_project_name" {
  type    = string
  default = ""
}

variable "codedeploy_app_name" {
  type    = string
  default = ""
}

variable "codedeploy_deployment_group_name" {
  type    = string
  default = ""
}

variable "s3_bucket" {
  type    = string
  default = ""
}

variable "codepipeline_role_arn" {
  type    = string
  default = ""
}
