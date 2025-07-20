# Este é um exemplo de código Terraform que demonstra várias funcionalidades (ESTRUTURA DOS BLOCOS)
# como criação de recursos, referências a módulos, variáveis, saídas e mais.

# Bloco principal que define configurações da versão do Terraform e outros ajustes
terraform {
  # Pode incluir configuração de backend, requisitos de versão, etc.
}

# Define o provedor que será utilizado — neste caso, AWS
provider "aws" {
  # Normalmente você inclui a região e credenciais aqui
}

# Declara e cria um bucket S3 na AWS
resource "aws_s3_bucket" "referencia_interna_codigo" {
  # Bloco para definir os atributos do bucket (como nome, configurações, etc.)
}

# Faz referência a um bucket S3 já existente (sem criar um novo)
data "aws_s3_bucket" "referencia_interna_codigo" {
  # Usado para obter dados de recursos que já existem
}

# Chama um módulo externo ou local reutilizável
module "referencia_interna_codigo" {
  # Pode conter parâmetros, fonte do módulo, etc.
}

# Declara uma variável que pode ser usada em outros blocos
variable "nome_variavel" {
  # Define tipo, valor padrão, descrição, etc.
}

# Define uma saída que será exibida após aplicar o plano
output "nome_output" {
  # Pode mostrar o ID de um recurso, o nome de um bucket, etc.
}

# Bloco usado para definir valores locais reutilizáveis
locals {
  # Ideal para funções ou valores intermediários que não precisam ser externos
}

# Usado para importar recursos existentes para o estado do Terraform
import {
  # Não é muito comum em código direto, mas pode ser usado via CLI ou bloco especial
}

# Informa que um recurso foi movido dentro do código
moved {
  # Útil para reorganizar módulos ou recursos sem perder o estado
}

# Informa que um recurso foi removido — importante para manter o estado atualizado
removed {
  # Indica ao Terraform que o recurso não faz mais parte da configuração
}

# Realiza verificações específicas na infraestrutura (novidade recente!)
check "referencia_interna_codigo" {
  # Pode verificar se um recurso está com a configuração esperada
}
