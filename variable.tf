variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "oluwaseyi-rsg"  # Replace with your actual resource group name
}

variable "location" {
  description = "The Azure region to deploy resources into"
  type        = string
  default     = "Central US"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "oluwaseyi-akss"  # Replace with your actual AKS cluster name
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "myakscluster"
}
