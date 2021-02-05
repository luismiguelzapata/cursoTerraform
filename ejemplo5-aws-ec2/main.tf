terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    profile = "default"
    region = "eu-west-1"
    
}

module "Instancia" {
    source  = "./Instancia"
   }
   


# 1* Modulo (con variables)
# 2* Capturar ipPublica
