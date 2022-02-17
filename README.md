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

`logs` Diretório com os logs gerados pelo Robot Framework.

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
    

---

### Glossário
**--Ainda não finalizado--**

`actions.robot` Arquivo contendo todas as ações realizadas em Keywords, as quais são chamadas nos testes.

`base.robot` Arquivo base com as bibliotecas, url, e Setup/Teardown dos testes.

`tests` Diretório contendo os testes realizados, onde são chamadas as Keywords do actions.robot.

`users.py` Massa de dados usada nos testes do arquivo cadastro.robot.

`extra` Diretório com alguns estudos feitos utilizando outras urls.

`logs` Diretório com os logs gerados pelo Robot Framework.

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