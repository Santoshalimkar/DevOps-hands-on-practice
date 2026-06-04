resource "helm_release" "ingress" {

  depends_on = [helm_release.istiod]

  name       = "istio-ingress"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "gateway"

  namespace = "istio-ingress"
  create_namespace = true
}