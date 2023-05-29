resource "aws_codepipeline" "this" {
  name     = var.name
  role_arn = var.codepipeline_role_arn

  artifact_store {
    location = var.s3_bucket
    type     = "S3"

    # encryption_key {
    #   id   = data.aws_kms_alias.s3kmskey.id
    #   type = "KMS"
    # }
  }

  stage {
    name = "Source"

    action {
      name             = "Source"
      category         = "Source"
      owner            = "AWS"
      provider         = "CodeStarSourceConnection"
      version          = "1"
      run_order        = 1
      output_artifacts = var.source_artifact

      configuration = {
        ConnectionArn        = var.connection_arn
        FullRepositoryId     = var.repository_name
        BranchName           = var.branch_name
        OutputArtifactFormat = var.clone_type
      }
    }
  }

  stage {
    name = "Build"

    action {
      name             = "Build"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = var.source_artifact
      output_artifacts = var.destination_artifact
      version          = "1"

      configuration = {
        ProjectName = var.codebuild_project_name
      }
    }
  }

  stage {
    name = "Deploy"

    action {
      name            = "Deploy"
      category        = "Deploy"
      owner           = "AWS"
      provider        = "CodeDeployToECS"
      run_order       = 1
      input_artifacts = var.destination_artifact
      version         = "1"

      configuration = {
        ApplicationName                = var.codedeploy_app_name
        DeploymentGroupName            = var.codedeploy_deployment_group_name
        AppSpecTemplateArtifact        = "DefinitionArtifact"
        TaskDefinitionTemplateArtifact = "DefinitionArtifact"
        Image1ArtifactName             = "ImageArtifact"
        Image1ContainerName            = "IMAGE1_NAME"
        TaskDefinitionTemplatePath     = var.task_definition_template
        AppSpecTemplatePath            = var.appspec_template
      }
    }
  }
}

