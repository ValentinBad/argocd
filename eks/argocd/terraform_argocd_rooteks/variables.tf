variable "cluster_name" {
  description = "GKE Cluster name to deploy ArgoCD"
  type        = string
}

variable "cluster_location" {
  description = "GKE Cluster location to deploy ArgoCD"
  type        = string
  default     = "europe-central2-a"
}

variable "git_source_repoURL" {
  description = "GitSource repoURL to Track and deploy to EKS by ROOT Application"
  type        = string
}

variable "git_source_path" {
  description = "GitSource Path in Git Repository to Track and deploy to EKS by ROOT Application"
  type        = string
  default     = ""
}

variable "git_source_targetRevision" {
  description = "GitSource HEAD or Branch to Track and deploy to EKS by ROOT Application"
  type        = string
  default     = "HEAD"
}