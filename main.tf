# GCP Project ID where the VM will be created
variable "project_id" { 
  description = "GCP Project ID"
  type        = string 
}

# GCP region (e.g., us-central1)
variable "region" { 
  description = "GCP region for resources"
  type        = string
  default     = "us-central1"
}

# GCP zone (e.g., us-central1-a)
variable "zone" { 
  description = "GCP zone for resources"
  type        = string
  default     = "us-central1-a"
}

# VM instance name
variable "instance_name" {
  description = "Name of the VM to create in GCP"
  type        = string
  default     = "jenkins-gcp-vm"
}

# VM machine type (e.g., e2-medium)
variable "machine_type" {
  description = "GCP machine type"
  type        = string
  default     = "e2-medium"
}

# Boot disk image (e.g., Debian)
variable "boot_image" {
  description = "GCP boot disk image"
  type        = string
  default     = "debian-cloud/debian-11"
}
