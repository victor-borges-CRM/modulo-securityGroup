data "aws_vpc" "vpc_padrao" {
  id = var.vpc_id
}

resource "aws_security_group" "teste_SG" {
  name        = var.nome_security_group
  description = "Grupo de seguranca para Teste_INF_561"
  vpc_id      = data.aws_vpc.vpc_padrao.id

  ingress {
    description = "Teste_INF_561"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #tfsec:ignore:aws-ec2-no-public-ingress-sgr
  }

  egress {
    description      = "Pode sair pra internet"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"] #tfsec:ignore:aws-ec2-no-public-egress-sgr
    ipv6_cidr_blocks = ["::/0"]      #tfsec:ignore:aws-ec2-no-public-egress-sgr
  }


  tags = {
    Name = var.nome_security_group
  }
}