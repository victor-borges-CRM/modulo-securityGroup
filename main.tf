data "aws_vpc" "vpc_padrao" {
  id = var.vpc_id
}

resource "aws_security_group" "teste_SG" {
  name        = "Teste_INF_561"
  description = "Grupo de seguranca para Teste_INF_561"
  vpc_id      = data.aws_vpc.vpc_padrao.id

  ingress {
    description = "Teste_INF_561"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  tags = {
    Name = "Teste_INF_561"
  }
}