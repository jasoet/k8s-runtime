resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "2.3.6"
  namespace = "argocd"

  values = [
    file("${path.module}/values/argocd.yaml")
  ]

}

