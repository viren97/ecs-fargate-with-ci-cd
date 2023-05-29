output "ecs_task_execution_role_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}

output "ecs_task_role_arn" {
  value = aws_iam_role.ecs_task_role.arn
}

output "codebuild_role" {
  value = aws_iam_role.codebuild_role.arn
}

output "codedeploy_role" {
  value = aws_iam_role.codedeploy_role.arn
}


output "codepipeline_role" {
  value = aws_iam_role.codepipeline_role.arn
}

