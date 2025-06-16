variable "meu_ip_publico" {
    type        = string
    description = "Endereço IP público para o Security Group SSH"
    # IMPORTANTE: Substitua pelo seu endereço IP público(IP do seu Provedor não do seu Roteador)
    # Para saber o seu IP público, acesse https://www.whatismyip.com/ ou https://meuip.com.br
    default     = "SEU IP 000.00.000.000/32"
}
