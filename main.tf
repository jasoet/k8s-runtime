module "namespace" {
  source = "./namespaces"
  kubeconfig_context = local.config_context
}

module "helm-releases" {
  source = "./releases"
  kubeconfig_context = local.config_context
}
