# VPC Variables
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# EKS Cluster Variables
variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

# IAM Variables
variable "eks_role_name" {
  description = "IAM role name for the EKS cluster"
  type        = string
  default     = "eks-cluster-role"
}

variable "node_role_name" {
  description = "IAM role name for the EKS worker nodes"
  type        = string
  default     = "eks-node-role"
}

# Security Group Variables
variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}