# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "planA_log_group" {
  name              = "/ecs/planA"
  retention_in_days = 30

  tags = {
    Name = "cb-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "planA_log_stream" {
  name           = "planA-log-stream"
  log_group_name = aws_cloudwatch_log_group.planA_log_group.name
}
