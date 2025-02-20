variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
}

variable "enable_grafana" {
  default = true
}

variable "enable_prometheus" {
  default = true
}

variable "enable_alertmanager" {
  default = true
}
