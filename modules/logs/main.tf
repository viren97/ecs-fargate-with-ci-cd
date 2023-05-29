# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "group" {
  name = var.group_name
  tags = merge(var.tags)
}

resource "aws_cloudwatch_log_stream" "stream" {
  name           = var.stream_name
  log_group_name = aws_cloudwatch_log_group.group.name
}
