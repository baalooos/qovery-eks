# EKS Cluster with Public Endpoint
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "my-eks-cluster"
  cluster_version = "1.28"

  cluster_endpoint_public_access = true

  subnet_ids = module.vpc.private_subnets
  vpc_id     = module.vpc.vpc_id

  eks_managed_node_groups = {
    example = {
      instance_types = var.eks_instance_types

      min_size     = 2
      max_size     = 10
      desired_size = 2
    }
  }
}
