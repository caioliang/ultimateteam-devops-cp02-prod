# ⭐🥏🥏🥏 ⭐Ultimate Team ⭐🥏🥏🥏⭐

Sitema de controle de treinos 

# ⚙️ DEVOPS TOOLS AND CLOUD COMPUTING: Version.

Este guia descreve os passos necessários para configurar a infraestrutura na Microsoft Azure e implantar a aplicação Ultimate Team utilizando o Azure CLI e GitHub Actions.

## ✅ Pré-requisitos

Antes de começar, certifique-se de que você possui:

* **Conta na Azure**: Uma assinatura ativa na Microsoft Azure.
* **Azure CLI**: A [interface de linha de comando da Azure]
* **[OPCIONAL] Cliente de Banco de Dados**: DBeaver, pgAdmin ou um software similar para se conectar ao SQL SERVER.
* **Git**: Para clonar o repositório.


## Arquivos utilizado no caminho abaixo:

**`../comandos-deploy-prod`**


## 2. Criação do Banco de Dados SQL SERVER

Nesta etapa, vamos configurar e executar o script que cria a instância do banco de dados na Azure.

1.  **Abra o arquivo de script** `create-sql-server.sh`.

2.  **Altere as variáveis** no início do arquivo para refletir o seu ambiente

3.  **Execute o script** Ajuste as permissões do arquivo no AZURE CLI e execute:
    ```bash
    bash create-sql-server.sh
    ```

## 🚀 3. Configuração do Script de Deploy

O script `deploy-ultimateteam.sh` é responsável por implantar a aplicação.

1.  **Abra o arquivo de script** `deploy-ultimateteam.sh`.

2.  **Altere as variáveis** necessárias, principalmente a que declara a URL do banco de dados que você salvou na etapa anterior.

## 📦 4. Configuração do GitHub Actions (CI/CD)

A etapa final é configurar o GitHub para automatizar o deploy.

1.  **Ajuste os Secrets no GitHub**
    * Navegue até o seu repositório no GitHub.
    * Vá em `Settings` > `Secrets and variables` > `Actions`.
    * Clique em `New repository secret` e adicione os secrets necessários para a pipeline, como as credenciais da Azure e a URL do banco de dados.

2.  **Ajuste o Workflow do GitHub Actions**:
    * Localize o arquivo de workflow principal do seu projeto (geralmente em `.github/workflows/main.yml` ou similar).
    * Edite este arquivo para que ele utilize as configurações e passos definidos no arquivo `ultimateteam-yml.yml`.


---

## 👨‍💻 Autor

Desenvolvido por [Allan Brito](https://github.com/Allanbm100)!
