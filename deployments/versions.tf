terraform {
  required_version = ">= 1.10"
  required_providers {
    google = {
      source  = "registry.opentofu.org/opentofu/google"
      version = ">=6.43.0"
    }
  }
  backend "gcs" {

  }
}
