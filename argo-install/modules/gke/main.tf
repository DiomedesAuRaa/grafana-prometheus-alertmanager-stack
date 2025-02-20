resource "kubernetes_namespace" "monitoring" {
  count = fileexists(var.kubeconfig_path) ? 1 : 0

  metadata {
    name = "monitoring"
  }
}
