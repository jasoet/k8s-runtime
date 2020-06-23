resource "kubernetes_namespace" "contour" {
  metadata {
    annotations = {
      name = "contour"
    }

    labels = {
      name = "contour"
    }

    name = "contour"
  }
}
