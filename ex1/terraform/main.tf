terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

resource "local_file" "docker_network" {
  filename = "${path.module}/docker-network.tf"
  content = <<-EOT
  resource "docker_network" "app_network" {
    name   = "app_network"
  }
  EOT
}

resource "local_file" "docker_volume" {
  filename = "${path.module}/docker-volume.tf"
  content = <<-EOT
  resource "docker_volume" "app_volume" {
    name   = "app_volume"
  }
  EOT
}

