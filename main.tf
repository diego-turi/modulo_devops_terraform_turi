# terraform {
#   required_version = ">= 0.12" # colocando compatibilidade do terraform para 0.12
# }

resource "aws_instance" "web" {
  subnet_id = "subnet-0089652a3167394e5"
  ami = "ami-0e82945ee924ca5bc"
  instance_type = var.tipo
  key_name = "cert-turma3-dev-turi" # a chave que vc tem na maquina pessoal
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-0b9885dd359525cdd"]
  root_block_device {
    encrypted = true
    volume_size = 8
  }
  tags = {
    Name = "EC2-TURI-TERRAFORM2"
    Itau = true
  }
}