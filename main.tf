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
   auth  = "sa-1-githubting-af07c7b0-df2e-429a-b051-b2c7b9ada024"
}