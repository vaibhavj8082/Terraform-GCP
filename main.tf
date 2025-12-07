provider "google" {
  # Terraform will pick the credentials from GOOGLE_APPLICATION_CREDENTIALS
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_image
      size  = 10  # Disk size in GB
    }
  }

  network_interface {
    network       = "default"
    access_config {}  # Assigns external IP
  }

  tags = ["jenkins-deployed"]
}
