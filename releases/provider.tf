provider "helm" {
  kubernetes {
    config_context = var.kubeconfig_context
  }
}
