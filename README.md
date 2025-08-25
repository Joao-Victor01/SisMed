# SisMed
Projeto de uso educacional. MVP de um sistema de gerenciamento e integração para clínicas médicas

Guia Básico para rodar o projeto:

-- BackEnd:

1) Pré-requisitos
JDK 21 instalado.
Projeto com estrutura que tem a pasta BackEnd (é nela que está o pom.xml e o mvnw.cmd).
VS Code (opcional) e/ou PowerShell no Windows.

2) Variáveis de ambiente Windows (JAVA_HOME)
Abra Painel de Controle → Sistema → Configurações avançadas → Variáveis de ambiente e defina:
Nome: JAVA_HOME
Valor: C:\Program Files\Java\jdk-21
No Path do sistema adicione:
%JAVA_HOME%\bin

Teste em um novo terminal PowerShell:

echo $env:JAVA_HOME
java -version

A saída deve mostrar o caminho e a versão 21.

3) Onde rodar os comandos (diretório certo)

O projeto tem uma subpasta BackEnd. Entre nela antes de usar o Maven wrapper.
Use o wrapper (Windows):
.\mvnw.cmd spring-boot:run


-- FrontEnd:
1. Ferramentas Necessárias

Node.js versão 20 ou superior
npm: O npm é instalado automaticamente com o Node.js.
Após download e instalação do Node.JS rode, em um terminal dentro do diretório do FrontEnd, o comando:
npm install

Angular CLI: A interface de linha de comando do Angular. Necessário instalá-la globalmente com o seguinte comando: (é necessário, para o projeto, que seja especificamente a versão 17)
npm install -g @angular/cli@17

2. Configurando o Ambiente (não é sempre necessário)
Apenas para garantir, verifique a política de execução do PowerShell se você estiver no Windows, rodando o comando em um terminal como administrador:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

3. Como Rodar a Aplicação
Acesse a pasta raiz do frontend (a pasta que contém o arquivo package.json).

Instale as dependências do projeto:

npm install

Este comando lê o arquivo package.json e instala todas as bibliotecas necessárias listadas em "dependencies" e "devDependencies".

Inicie o servidor de desenvolvimento:
O  arquivo package.json possui um script para iniciar a aplicação. Usar este comando:

npm run start

Este comando executa a instrução "ng serve --proxy-config proxy.conf.js". Ele faz duas coisas:

ng serve: Inicia o servidor de desenvolvimento do Angular.

--proxy-config proxy.conf.js: Habilita um servidor proxy que redireciona as requisições da sua aplicação Angular para o servidor de backend. Isso é crucial para que o frontend consiga se comunicar com a API.

Após a execução do comando, o servidor será iniciado e você poderá acessar a aplicação no seu navegador, geralmente em http://localhost:4200.
