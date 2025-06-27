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

#-------------------------------------------------------------

module "argocd_dev_root" {
  source             = "./terraform_argocd_root_eks"
  eks_cluster_name   = "demo-dev"
  git_source_path    = "demo-dev/applications"
  git_source_repoURL = "git@github.com:ValentinBad/argocd.git"
}


module "argocd_prod_root" {
  source             = "./terraform_argocd_root_eks"
  eks_cluster_name   = "demo-prod"
  git_source_path    = "demo-prod/applications"
  git_source_repoURL = "git@github.com:ValentinBad/argocd.git"
}