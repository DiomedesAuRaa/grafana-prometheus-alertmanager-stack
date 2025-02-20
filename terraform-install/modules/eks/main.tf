resource "helm_release" "prometheus" {
  count      = var.enable_prometheus ? 1 : 0
  name       = "prometheus"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus"
  namespace  = "monitoring"

  set {
    name  = "alertmanager.enabled"
    value = var.enable_alertmanager
  }
}

resource "helm_release" "grafana" {
  count      = var.enable_grafana ? 1 : 0
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "grafana"
  namespace  = "monitoring"

  set {
    name  = "service.type"
    value = "LoadBalancer"
  }
}
