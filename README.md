# Challenge de DevOps da Alura - Serviço AluraFlix

1. A primeira parte do desafio consiste em conteinerizar a aplicação.

2. A segunda parte do desafio consiste em disponibilizar o container em um provedor Cloud para acesso público.

3. A terceira parte do desafio consiste na automação do processo de criação e deploy do container usando rotinas de CI e CD

## Passo-a-passo

- Primeiro é preciso buildar e executar o container

> docker-compose build

> docker-compose up [-d]

- Na primeira execução será criado um usuário administrador padrão, com as credenciais definidas no Dockerfile. Para segurança, recomenda-se alterar a senha. 

Pelo navegador:

> http://localhost:(porta)/admin/auth/user/1/password/

OU pela linha de comando:

> docker container exec -ti ctn-app bash

> python ./manage.py changepassword

- Em seguida pode-se acessar a aplicação pelo navegador no endereço 'localhost:(porta)/programas', na porta aleatória que foi atribuida. Para descobrir a porta, use

> docker container ls