module "argocd_dev" {
  source = "./terraform_argocd_eks"
  cluster_name = "demo-dev"
  chart_version    = "5.46.0"
  project_id    = "meta-coral-463911-c9"   
}

module "argocd_prod" {
  source = "./terraform_argocd_eks"
  cluster_name = "demo-prod"
  chart_version    = "5.45.1"
  project_id    = "meta-coral-463911-c9"   
}