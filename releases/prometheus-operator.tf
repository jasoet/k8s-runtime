resource "helm_release" "prometheus-operator" {
  name = "prometheus-operator"
  repository = "https://kubernetes-charts.storage.googleapis.com"
  chart = "prometheus-operator"
  version = "8.13.4"
  namespace = "infrastructure"

  values = [
    file("${path.module}/values/prometheus.yaml")
  ]
}
