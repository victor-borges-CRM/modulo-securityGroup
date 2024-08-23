variable "vpc_id" {
  type        = string
  default     = "vpc-0708bc60b0f86d2d7"
  description = "ID da VPC padrão da CRMBonus"
}

variable "nome_security_group" {
  type        = string
  default     = "Teste_INF_561"
  description = "Nome do grupo de seguranca"
}
