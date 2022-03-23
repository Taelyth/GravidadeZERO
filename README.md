# GravidadeZERO
Projeto criado para acompanhar as aulas do curso [GravidadeZERO][QANinja] em Robot Framework.

---

### Índice

* [GravidadeZERO](#gravidadezero)
  * [Índice](#índice)
  * [Yodapp](#yodapp)
    * [Pré-Requisitos](#pré-requisitos)
    * [Glossário](#glossário)
  * [Getgeeks](#getgeeks)
    * [Pré-Requisitos](#pré-requisitos-1)
    * [Glossário](#glossário-1)
  * [Créditos](#créditos)

---

## Yodapp

Projeto do curso Starter, onde é estudado como realizar **testes Web** utilizando **Robot Framework**.

### Pré-Requisitos
- Instalar essas duas bibliotecas no arquivo [base.robot](yodapp/resources/base.robot)

```
Library  Browser
Library  String
```

- URL utilizada para as aulas: [Yodapp]

---

### Glossário

`actions.robot` Arquivo contendo todas as ações realizadas em Keywords, as quais são chamadas nos testes.

`base.robot` Arquivo base com as bibliotecas, url, e Setup/Teardown dos testes.

`tests` Diretório contendo os testes realizados, onde são chamadas as Keywords do actions.robot.

`users.py` Massa de dados usada nos testes do arquivo cadastro.robot.

`extra` Diretório com alguns estudos feitos utilizando outras urls.

`logs` Diretório com os logs gerados pelo Robot Framework (não vai para o commit).

---

## Getgeeks

Projeto do curso Pro, onde é estudado como realizar **testes Web** utilizando **Robot Framework**.

Para os testes aprendi a subir uma aplicação Web utilizando o **Heroku** e **ElephantSQL**.

### Pré-Requisitos
- Extrair o arquivo [getgeeks-package-v1.zip](getgeeks/getgeeks-package-v1.zip)
- Subir o banco de dados no [ElephantSQL], para isso é necessário:
  - Criar uma conta no [ElephantSQL] e criar um banco de dados.
  - Alterar o arquivo **.env** da pasta **database** conforme o database criado no site do ElephantSQL:
  ```
  PG_HOST=Preencher com o Server
  PG_USER=Preencher com o User
  PG_PASSWORD=Preencher com o Password
  PG_DATABASE=Preencher com o nome do database, que é igual ao User
  ```
  - Executar os seguintes comandos no terminal (dentro da pasta package-v1\database):
  ```
  npm install
  npm run migrate
  ```
- Subir as aplicações no [Heroku], para isso é necessário:
  - Criar uma conta no [Heroku] e adicionar 4 aplicações que serão: (web/users/geeks/gateway)
  - Preencher o arquivo **.env** das pastas `apis\users` e `apis\geeks` com os dados do database criado acima.
  - Subir essas aplicações no Heroku, via Git:
    - Instalar o [Heroku CLI].
    - Entrar nas pastas `apis\users` e `apis\geeks` via terminal.
    - Executar os comandos descritos na página de Deploy das aplicações criadas no Heroku.
  - Após subir essas duas aplicações, preencher o arquivo **.env** da pasta gateway contendo as duas URLs criadas acima.
  - Subir a aplicação gateway.
  - Localizar e substituir as URLs `http://localhost:3333` dentro da pasta **web** pela url criada na aplicação Gateway.
  - Subir a aplicação Web.
    
Obs: o arquivo [getgeeks-package-v2.zip](getgeeks/getgeeks-package-v2.zip) foi utilizado nas aulas posteriores para "arrumar um bug" gerado na aplicação Web.

Para subí-lo na Heroku, é só substituir todo o conteúdo da pasta `packages\web`, aplicar a mesma alteração do `localhost` feita anteriormente e subit no git com os comandos:
```
cd getgeeks/deploys/packages/web
git add .
git commit -m "publicando a versão 2 da aplicação web"
git push heroku master
```
* Os comandos acima estão descritos na página de Deploy da aplicação da Heroku.

Para executar o arquivo [Delorean.robot](getgeeks/project/tasks/Delorean.robot), que faz a limpeza do banco de dados, é necessário criar um arquivo chamado `Database.py`, que deve conter as seguintes informações:

```python
def factory_database():
    database = {
        'banco': 'Preencher com o nome do database, que é igual ao User',
        'usuario': 'Preencher com o User',
        'senha': 'Preencher com o Password',
        'server': 'Preencher com o Server',
        'porta': '5432, que é a porta padrão do PostgreSQL'
    }
    return database
```
Preencher com as informações do [ElephantSQL].

---

### Glossário
**--Ainda não finalizado--**

`Base.robot` Arquivo base com as bibliotecas, url, e Setup/Teardown dos testes.

`Database.robot` Arquivo em robot para operações no Database (SQL) utilizando Robot.

`Helpers.robot` Arquivo contendo Keywords de ajuda para os testes realizados (como criar usuário pré-definido no database).

`Utils.py` Arquivo com a biblioteca Faker para geração do nome (hash) das Screenshots (evidências) dos testes.

`Delorean.robot` Arquivo contendo a `Task` do reset de ambiente, que é executado a cada teste.

`actions` Diretório contendo todas as ações realizadas em Keywords, as quais são chamadas nos testes.

`tests` Diretório contendo os testes realizados, onde são chamadas as Keywords do Actions.robot.

`Users.py` Massa de dados usada nos testes do arquivo Signup.robot.

`logs` Diretório com os logs gerados pelo Robot Framework (não vai para o commit).

`docs` Diretório contendo o arquivo em BDD utilizado para criar os testes.

---

`run.bat` e `run.sh`: executáveis criados para rodar os testes com os comandos:

Dentro da pasta `getgeeks/project`:
- No PowerShell ou Prompt: `.\run.bat`
- No Git Bash: `./run.sh`

---

### Créditos
[<img src="assets\QANinja-Logo-black.png" width="20%"/>][QANinja]


<!-- links -->
[QANinja]: https://qaninja.academy/
[Yodapp]: https://yodapp-testing.vercel.app
[ElephantSQL]: https://www.elephantsql.com/
[Heroku]: https://www.heroku.com
[Heroku CLI]: https://devcenter.heroku.com/articles/heroku-cli

<!-- imagens -->
[QANinja-Logo]: assets/QANinja-Logo-black.png (QANinja-logo)