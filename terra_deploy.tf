provider "kubernetes" {
  # Kubeconfig path
  config_path = "/etc/rancher/k3s/k3s.yaml"
}

resource "kubernetes_manifest" "http_server" {
  manifest = yamldecode(file("http_server.yaml"))
}
