resource "aws_iam_role" "ecs_task_execution_role" {
  name               = var.ecs_task_execution_role_name
  assume_role_policy = data.aws_iam_policy_document.ecs_task_assume_role.json
}

resource "aws_iam_role_policy_attachment" "ecs_task_exec_attach_policy1" {
  role       = aws_iam_role.ecs_task_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

resource "aws_iam_role_policy_attachment" "ecs_task_exec_attach_policy2" {
  role       = aws_iam_role.ecs_task_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}


resource "aws_iam_role" "ecs_task_role" {
  name               = var.ecs_task_role_name
  assume_role_policy = data.aws_iam_policy_document.ecs_task_assume_role.json
}

resource "aws_iam_role_policy_attachment" "ecs_task_attach_policy1" {
  role       = aws_iam_role.ecs_task_role.name
  policy_arn = aws_iam_policy.kms_decrypt_access_policy.arn
}

resource "aws_iam_role_policy_attachment" "ecs_task_attach_policy2" {
  role       = aws_iam_role.ecs_task_role.name
  policy_arn = aws_iam_policy.secret_manager_access_policy.arn
}

resource "aws_iam_role_policy_attachment" "ecs-task-attach-policy10" {
  role       = aws_iam_role.ecs_task_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonElastiCacheFullAccess"
}

resource "aws_iam_role_policy_attachment" "ecs_task_attach_policy3" {
  role       = aws_iam_role.ecs_task_role.name
  policy_arn = aws_iam_policy.sqs_access_policy.arn
}

resource "aws_iam_role_policy_attachment" "ecs_task_attach_policy5" {
  role       = aws_iam_role.ecs_task_role.name
  policy_arn = aws_iam_policy.sns_access_policy.arn
}

resource "aws_iam_role_policy_attachment" "ecs_task_attach_policy6" {
  role       = aws_iam_role.ecs_task_role.name
  policy_arn = aws_iam_policy.rds_access_policy.arn
}

resource "aws_iam_role" "codedeploy_role" {
  name               = var.codedeploy_role_name
  assume_role_policy = data.aws_iam_policy_document.codedeploy_assume_role.json
}

resource "aws_iam_role_policy_attachment" "codedeploy_attach_policy1" {
  role       = aws_iam_role.codedeploy_role.name
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeDeployRoleForECS"
}

resource "aws_iam_role_policy_attachment" "codedeploy_attach_policy2" {
  role       = aws_iam_role.codedeploy_role.name
  policy_arn = aws_iam_policy.kms_decrypt_access_policy.arn
}

resource "aws_iam_role" "codebuild_role" {
  name               = var.codebuild_role_name
  assume_role_policy = data.aws_iam_policy_document.codebuild_assume_role.json
}

resource "aws_iam_role_policy" "codebuild_attach_policy1" {
  role   = aws_iam_role.codebuild_role.name
  policy = data.aws_iam_policy_document.codebuild_policy_data.json
}

resource "aws_iam_role_policy_attachment" "codebuild_attach_policy2" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
  role       = aws_iam_role.codebuild_role.name
}

resource "aws_iam_role" "codepipeline_role" {
  name               = var.codepipeline_role_name
  assume_role_policy = data.aws_iam_policy_document.codepipeline_assume_role.json
}

resource "aws_iam_role_policy" "codepipeline_attach_policy" {
  role   = aws_iam_role.codepipeline_role.id
  policy = data.aws_iam_policy_document.codepipeline_policy_data.json
}
