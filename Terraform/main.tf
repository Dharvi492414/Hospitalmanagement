module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr   = var.vpc_cidr
  azs        = var.azs
}

module "iam" {
  source = "./modules/iam"
}

module "eks" {
  source          = "./modules/eks"
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
  desired_size    = var.desired_size
  min_size        = var.min_size
  max_size        = var.max_size
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.private_subnets
  role_arn        = module.iam.eks_role_arn
}