terraform {
  required_version = ">= 1.0"

  # Optional: GCS backend (recommended for team/shared state)
  # backend "gcs" {
  #   bucket = "your-terraform-state-bucket"
  #   prefix = "terraform/state"
  # }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
  # The provider will use application default creds if GOOGLE_APPLICATION_CREDENTIALS env is set
}

resource "google_compute_instance" "vm" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_image
      size  = 10
    }
  }

  network_interface {
    network = "default"
    access_config {} # gives external IP
  }

  tags = ["jenkins-deployed"]
}
