terraform {
    required_providers {
        docker = {
            #  He actualizado el repo del provider de docker
            source = "kreuzwerker/docker"
        }
    }
}

provider "docker" { }

resource "docker_image" "imagen-ubuntu" {
//  OJO, tomo el último UBUNTU ¿?
  // 1 name = "ubuntu:latest"
    name = "ubuntu:${var.version_imagen}"
}

/*
    Me estoy creando un contenedor
*/
resource "docker_container" "contenedor-ubuntu" {
  name  = "mi_contenedor_ubuntu"
  image = docker_image.imagen-ubuntu.latest
  command = ["bash", "-c", "sleep 3600"]
  
  dynamic "volumes" {
    for_each = var.volumenes
    content {
        host_path      = volumes.value["host_path"]
        container_path = volumes.value["container_path"]
    }
  }
  
}



/*
resource "docker_volume" "ivan" {
  name = "ivan"
  from_container = "mi_contenedor_ubuntu"
  host_path = "/home/ubuntu/environment/ivan"
  volume_name = "ivan"
}
*/