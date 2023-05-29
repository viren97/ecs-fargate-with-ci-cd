resource "aws_codebuild_project" "main" {
  name          = var.name
  description   = var.description
  build_timeout = var.build_timeout
  service_role  = var.service_role_arn

  cache {
    type     = "S3"
    location = var.s3_bucket
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:2.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"


    environment_variable {
      name  = "AWS_DEFAULT_REGION"
      value = var.region
    }
    environment_variable {
      name  = "IMAGE_REPO_NAME"
      value = var.image_repo_name
    }
    environment_variable {
      name  = "IMAGE_TAG"
      value = var.image_tag
    }
    environment_variable {
      name  = "AWS_ACCOUNT_ID"
      value = var.account_id
    }
    environment_variable {
      name  = "SERVICE_NAME"
      value = var.service_name
    }
    environment_variable {
      name  = "ENVIRONMENT"
      value = var.environment
    }
  }

  logs_config {
    cloudwatch_logs {
      group_name  = var.log_group_name
      stream_name = var.log_stream_name
    }

    s3_logs {
      status   = "ENABLED"
      location = "${var.s3_bucket_id}/build-log"
    }
  }

  source {
    type      = "CODEPIPELINE"
    location  = var.s3_bucket
    buildspec = var.buildspec_file_name
  }

  artifacts {
    type     = "CODEPIPELINE"
    location = var.s3_bucket
    name     = var.BuildArtifact
  }
}

