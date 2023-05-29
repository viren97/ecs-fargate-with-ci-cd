output "vpc_id" {
  description = "The ID of the VPC"
  value       = try(aws_vpc.this.id, null)
}

output "public_subnets_ids" {
  description = "public subnets IDs"
  value       = aws_subnet.public.*.id
}

output "private_subnet_ids" {
  description = "private subnets IDs"
  value       = aws_subnet.private.*.id
}