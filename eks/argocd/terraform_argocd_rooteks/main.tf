data "google_container_cluster" "this" {
  name     = var.cluster_name
  location = var.cluster_location
}

data "google_client_config" "default" {}

provider "kubernetes" {
  host = "https://${data.google_container_cluster.this.endpoint}"

  cluster_ca_certificate = base64decode(
    data.google_container_cluster.this.master_auth[0].cluster_ca_certificate
  )

  token = data.google_client_config.current.access_token
}


resource "kubernetes_manifest" "argocd_root" {
  manifest = yamldecode(templatefile("${path.module}/root.yaml", {
    path           = var.git_source_path
    repoURL        = var.git_source_repoURL
    targetRevision = var.git_source_targetRevision
  }))
}