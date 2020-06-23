resource "helm_release" "contour" {
  name = "contour"
  repository = "https://kubernetes-charts.storage.googleapis.com"
  chart = "contour"
  version = "0.2.0"
  namespace = "contour"

  values = [
    file("${path.module}/values/contour.yaml")
  ]
}
