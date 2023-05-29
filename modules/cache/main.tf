resource "aws_elasticache_subnet_group" "subnet_group" {
  name       = var.subnet_group_name
  subnet_ids = var.public_subnet_ids
}

resource "aws_elasticache_cluster" "cluster" {
  cluster_id        = var.cluster_id
  engine            = var.engine
  node_type         = var.node_type
  num_cache_nodes   = var.num_cache_nodes
  subnet_group_name = aws_elasticache_subnet_group.subnet_group.name

  security_group_ids = [var.sg_id]
}
