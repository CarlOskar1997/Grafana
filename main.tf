terraform {
   required_providers {
      grafana = {
         source  = "grafana/grafana"
         version = ">= 2.9.0"
      }
   }
}


provider "grafana" {
   alias = "cloud"

   url   = "https://carloskar1905.grafana.net/"
   auth  = grafana_key
}