terraform {
   required_providers {
      grafana = {
         source  = "grafana/grafana"
         version = ">= 2.9.0"
      }
   }
}
resource "github_actions_secret" "grafana" {
  repository       = "grafana"
  secret_name      = "GRAFANA_KEY"
  encrypted_value  = var.GRAFANA_KEY
}
provider "grafana" {
   alias = "cloud"

   url   = "https://carloskar1905.grafana.net/"
   auth  = github_actions_secret.encrypted_value
}