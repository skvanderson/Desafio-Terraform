# Infraestrutura como Código com Terraform na AWS 🚀

Este repositório contém uma implementação de infraestrutura na AWS utilizando o Terraform como ferramenta de provisionamento.

## 📌 Objetivo do Projeto

Automatizar o provisionamento de recursos na AWS, utilizando boas práticas de infraestrutura como código.

## ✅ Pré-requisitos

Antes de executar o projeto, certifique-se de ter os seguintes itens instalados:

- Conta ativa na AWS
- [Terraform](https://www.terraform.io/downloads.html)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [Git](https://git-scm.com/downloads)
- Chave de acesso da AWS (`AWS_ACCESS_KEY_ID` e `AWS_SECRET_ACCESS_KEY`)

## 📂 Estrutura do Projeto

\`\`\`
├── docs/
├── main.tf
├── variables.tf
├── outputs.tf
├── ec2.tf
├── security_group.tf
├── key_pair.tf
├── terraform.tfstate
├── terraform.tfstate.backup
├── user_data.sh
└── playbook.yaml
\`\`\`

> Obs: Pastas e arquivos internos podem variar conforme o desenvolvimento.

## 🚀 Passo a Passo de Execução

### 1️⃣ Clone o Repositório

\`\`\`bash
git clone https://github.com/seu-usuario/Desafio-Terraform.git
cd Desafio-Terraform
\`\`\`

### 2️⃣ Configure as Credenciais AWS

#### Via variáveis de ambiente:

\`\`\`bash
export AWS_ACCESS_KEY_ID="sua-access-key"
export AWS_SECRET_ACCESS_KEY="sua-secret-key"
export AWS_DEFAULT_REGION="us-east-1"
\`\`\`

Ou configure no arquivo \`~/.aws/credentials\`:

\`\`\`
[default]
aws_access_key_id = SUA_ACCESS_KEY
aws_secret_access_key = SUA_SECRET_KEY
\`\`\`

### 3️⃣ Inicialize o Terraform

\`\`\`bash
terraform init
\`\`\`

### 4️⃣ Valide os Arquivos

\`\`\`bash
terraform validate
\`\`\`

### 5️⃣ Visualize o Plano de Execução

\`\`\`bash
terraform plan
\`\`\`

### 6️⃣ Aplique as Configurações

\`\`\`bash
terraform apply
\`\`\`

> Confirme a execução quando o Terraform solicitar.

### 7️⃣ Conecte-se na Instância EC2 Criada

Após o provisionamento, consulte o IP público com:

\`\`\`bash
terraform output
\`\`\`

Acesse via SSH:

\`\`\`bash
ssh -i ./chave.pem ec2-user@<ip-publico>
\`\`\`

### 8️⃣ Destrua a Infraestrutura (quando não for mais necessária)

\`\`\`bash
terraform destroy
\`\`\`

---

## ⚠️ Observações Importantes

- Não faça o versionamento de pastas como \`.terraform\` e arquivos de estado (\`terraform.tfstate\`, \`.terraform.lock.hcl\` etc).
- O arquivo \`README.html\` foi removido para que o GitHub exiba corretamente este \`README.md\` como principal.

## 👤 Autor

Baseado no projeto original da Avanti-DVP: [iac-com-terraform-e-aws](https://gitlab.com/avanti-dvp/iac-com-terraform-e-aws)  
Adaptado por [Seu Nome/GitHub](https://github.com/seu-usuario)

