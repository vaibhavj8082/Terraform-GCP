variable "project_id" { type = string }
variable "region"     { type = string, default = "us-central1" }
variable "zone"       { type = string, default = "us-central1-a" }
variable "instance_name" { type = string, default = "jenkins-gcp-vm" }
variable "machine_type"  { type = string, default = "e2-medium" }
variable "boot_image"    { type = string, default = "debian-cloud/debian-11" }
