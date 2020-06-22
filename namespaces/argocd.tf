resource "kubernetes_namespace" "argocd" {
  metadata {
    annotations = {
      name = "argocd"
    }

    labels = {
      name = "argocd"
    }

    name = "argocd"
  }
}
