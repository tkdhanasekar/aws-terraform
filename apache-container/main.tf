terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "apache" {
  name         = "dnadna/apache:latest"
  keep_locally = false
}

resource "docker_container" "apache" {
  image = docker_image.apache.image_id
  name  = "apache"
  ports {
    internal = 80
    external = 8000
  }
}

