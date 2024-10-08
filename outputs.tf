# Output the EKS cluster public endpoint and certificate authority data
output "cluster_endpoint" {
  description = "The EKS cluster endpoint (Public)"
  value       = module.eks.cluster_endpoint
}

output "cluster_certificate_authority_data" {
  description = "EKS Cluster Certificate Authority Data"
  value       = module.eks.cluster_certificate_authority_data
}
