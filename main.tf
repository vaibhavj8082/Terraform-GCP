provider "google" {
  credentials = file("${path.module}/terraform.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name         = "jenkins-gcp-vm"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }
}
