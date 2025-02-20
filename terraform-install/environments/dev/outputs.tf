output "grafana_url" {
  value = var.enable_grafana ? module.gke[0].grafana_url : "Grafana disabled"
}

output "prometheus_url" {
  value = var.enable_prometheus ? module.gke[0].prometheus_url : "Prometheus disabled"
}

output "alertmanager_url" {
  value = var.enable_alertmanager ? module.gke[0].alertmanager_url : "Alertmanager disabled"
}
