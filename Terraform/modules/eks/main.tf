resource "aws_eks_cluster" "main" {
  name     = var.cluster_name
  role_arn = module.iam.eks_role_arn
  vpc_config {
    subnet_ids = module.vpc.private_subnet_ids
  }
}

resource "aws_eks_node_group" "main" {
  cluster_name    = aws_eks_cluster.main.name
  node_group_name = var.node_group_name
  node_role_arn   = module.iam.node_role_arn
  subnet_ids      = module.vpc.private_subnet_ids
  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }
}