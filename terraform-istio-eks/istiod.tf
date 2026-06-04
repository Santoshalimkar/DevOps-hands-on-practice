resource "helm_release" "istiod" {

  depends_on = [helm_release.istio_base]

  name       = "istiod"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "istiod"

  namespace = "istio-system"
}