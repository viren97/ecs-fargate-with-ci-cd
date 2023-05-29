output "tg_blue_id" {
  value = aws_alb_target_group.blue.id
}

output "tg_green_name" {
  value = aws_alb_target_group.green.name
}

output "tg_blue_name" {
  value = aws_alb_target_group.blue.name
}

output "listener_arn" {
  value = aws_alb_listener.front_end1.arn
}


output "lb_sg_id" {
  description = "load balancer security group id"
  value       = aws_security_group.lb_sg.id
}

output "ecs_sg_id" {
  value       = aws_security_group.ecs_task_sg.id
  description = "ecs task security group id"
}

output "elasticache_sg_id" {
  value       = aws_security_group.elasticache.id
  description = "cache security group id"
}
