module "namespace" {
  source             = "./namespaces"
  kubeconfig_context = local.config_context
}

module "helm-releases" {
  source             = "./releases"
  depends_on         = [module.namespace]
  kubeconfig_context = local.config_context
}
