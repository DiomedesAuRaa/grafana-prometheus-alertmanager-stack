module "gke" {
  source = "../../modules/gke"
  cluster_name = var.cluster_name
  kubeconfig_path = var.kubeconfig_path
}

module "aks" {
  source = "../../modules/aks"
  cluster_name = var.cluster_name
  kubeconfig_path = var.kubeconfig_path
}

module "eks" {
  source = "../../modules/eks"
  cluster_name = var.cluster_name
  kubeconfig_path = var.kubeconfig_path
}
