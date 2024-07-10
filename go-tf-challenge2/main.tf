terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "3.0.1"
    }
  }
}

provider "http" {
  # Configuration options
}

data "http" "sp" {
  url = "http://0.0.0.0:2224/spock"

  request_headers = {
    Accept = "application/json"
  }
}

output "spocks_output" {
  description = "Spocks output" 
  value = data.http.sp.response_body
}
