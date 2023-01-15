terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "mygcptrial-371303"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_storage_bucket" "static-site" {
  name          = "bucket-from-tf-up-lsad"
  location      = "us-central1"
  force_destroy = true

}
