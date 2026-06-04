resource "helm_release" "kiali" {

  name       = "kiali"

  repository = "https://kiali.org/helm-charts"

  chart      = "kiali-server"

  namespace  = "istio-system"

  depends_on = [
    helm_release.istiod
  ]
}