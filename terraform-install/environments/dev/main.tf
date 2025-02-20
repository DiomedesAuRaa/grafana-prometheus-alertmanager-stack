module "gke" {
  source = "../../modules/gke"
  cluster_name = var.cluster_name
  enable_grafana = var.enable_grafana
  enable_prometheus = var.enable_prometheus
  enable_alertmanager = var.enable_alertmanager
}

module "aks" {
  source = "../../modules/aks"
  cluster_name = var.cluster_name
  enable_grafana = var.enable_grafana
  enable_prometheus = var.enable_prometheus
  enable_alertmanager = var.enable_alertmanager
}

module "eks" {
  source = "../../modules/eks"
  cluster_name = var.cluster_name
  enable_grafana = var.enable_grafana
  enable_prometheus = var.enable_prometheus
  enable_alertmanager = var.enable_alertmanager
}
