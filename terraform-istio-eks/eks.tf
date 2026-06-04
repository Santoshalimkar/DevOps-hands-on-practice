module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = var.cluster_name
  kubernetes_version = "1.33"

  endpoint_public_access = true

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {

    istio = {
      instance_types = ["c7i-flex.large"]

      desired_size = 2
      min_size     = 2
      max_size     = 4

      disk_size = 30
    }
  }
}