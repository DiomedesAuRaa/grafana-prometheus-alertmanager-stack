variable "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
}

variable "enable_grafana" {
  description = "Enable Grafana deployment"
  type        = bool
  default     = true
}

variable "enable_prometheus" {
  description = "Enable Prometheus deployment"
  type        = bool
  default     = true
}

variable "enable_alertmanager" {
  description = "Enable Alertmanager deployment"
  type        = bool
  default     = true
}
