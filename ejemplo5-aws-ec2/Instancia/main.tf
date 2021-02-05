resource "aws_instance" "mi_maquina" {
    ami = "ami-0176d5cc50152c509"
    instance_type = "t2.micro"
    tags = {
    Name = "LuisMiguel"
  }
}