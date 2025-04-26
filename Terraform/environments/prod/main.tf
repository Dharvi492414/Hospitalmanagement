module "vpc" {
  source    = "../../modules/vpc"
  vpc_cidr  = "10.1.0.0/16"
  azs       = ["us-east-1a", "us-east-1b"]
}

module "iam" {
  source = "../../modules/iam"
}

module "eks" {
  source          = "../../modules/eks"
  cluster_name    = "prod-cluster"
  node_group_name = "prod-node-group"
  desired_size    = 2
  max_size        = 3
  min_size        = 1
}

module "security_groups" {
  source = "../../modules/security_groups"
  vpc_id = module.vpc.vpc_id
}