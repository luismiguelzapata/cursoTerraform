variable "nombre_imagen" {
    description = "nombre de variable"
    type= string
    default = "ubuntu:21.04"
    
}

variable "version_imagen" {
    description = "Version de imagen"
    type= string
    default = "21.04"
    
}

variable "volumenes" {
    description = "Volumenes que vamos a montar en el contenedor"
    type        = list(map(string))
    default     = [
        {
            host_path      = "/home/ubuntu/environment/cursoTerraform"
            container_path = "/cursoTerraform"
        },
        {
            #volume_name = "vol_ivan"
            container_path = "/ivan"
            host_path      = "/home/ubuntu/environment/ivan"
        }
    ]
}


