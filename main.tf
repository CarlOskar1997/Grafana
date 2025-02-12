terraform {
   required_providers {
      grafana = {
         source  = "grafana/grafana"
         version = ">= 2.9.0"
      }
   }
}

resource "github_actions_secret" "GRAFANA_KEY" {
  repository       = "Grafana"
  secret_name      = "GRAFANA_KEY"
}

provider "grafana" {
   alias = "cloud"

   url   = "https://carloskar1905.grafana.net/"
   auth  = github_actions_secret.secret_name
}