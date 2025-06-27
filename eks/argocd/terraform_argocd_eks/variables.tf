variable "cluster_name" {
  description = "GKE Cluster name to deploy ArgoCD"
  type        = string
}

variable "cluster_location" {
  description = "GKE Cluster location to deploy ArgoCD"
  type        = string
  default     = "europe-central2-a"
}

variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "chart_version" {
  description = "Helm Chart Version of ArgoCD: https://github.com/argoproj/argo-helm/releases"
  type        = string
  default     = "5.46.0"
}
