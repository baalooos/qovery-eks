variable "region" {
  description = "The AWS region to deploy the resources in."
  default     = "eu-west-1" # Change the default as needed
}

variable "registry_user_name" {
  description = "Name of the user to create for container registry access"
  default     = "my-eks-user"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16" # Default VPC CIDR block
}

variable "public_subnets_range" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets_range" {
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "eks_instance_types" {
  description = "Array of instance type"
  default     = ["m5.xlarge"]
}

