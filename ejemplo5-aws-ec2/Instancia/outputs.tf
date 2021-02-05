output "ipPublica" {
    value = aws_instance.mi_maquina.public_ip
}

output "volumeSize" {
    value = aws_instance.mi_maquina.root_block_device[0].volume_size
}
