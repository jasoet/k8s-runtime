resource "kubernetes_namespace" "infrastructure" {
  metadata {
    annotations = {
      name = "infrastructure"
    }

    labels = {
      name = "infrastructure"
    }

    name = "infrastructure"
  }
}
