terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "bolt" {
  name         = "dnadna/bolt:latest"
  keep_locally = false
}

resource "docker_container" "bolt" {
  image = docker_image.bolt.image_id
  name  = "bolt"
  ports {
    internal = 80
    external = 8085
  }
}

