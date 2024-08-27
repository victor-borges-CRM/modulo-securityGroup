variable "vpc_id" {
  type        = string
  default     = "Default_TF"
  description = "ID da VPC padrão da CRMBonus"
}

variable "nome_security_group" {
  type        = string
  default     = "Teste_agent_instalacao"
  description = "Nome do grupo de seguranca"
}
