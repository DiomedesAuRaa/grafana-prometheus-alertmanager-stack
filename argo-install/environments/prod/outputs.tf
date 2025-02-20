output "grafana_url" {
  value = var.enable_grafana ? "http://grafana.monitoring.svc" : "Grafana disabled"
}

output "prometheus_url" {
  value = var.enable_prometheus ? "http://prometheus.monitoring.svc" : "Prometheus disabled"
}

output "alertmanager_url" {
  value = var.enable_alertmanager ? "http://alertmanager.monitoring.svc" : "Alertmanager disabled"
}
