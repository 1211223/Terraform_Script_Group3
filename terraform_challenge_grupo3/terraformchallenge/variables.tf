variable "project_id" {
  default = "terraformchallenge-423722" //ID_PROJETO
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "instance_name" {
  default = "vm-terraform-challenge"
}

variable "machine_type" {
  default = "e2-micro"
}

variable "image" {
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}
