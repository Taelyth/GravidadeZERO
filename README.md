# GravidadeZERO
Projeto criado para acompanhar as aulas do curso [GravidadeZERO][QANinja] em Robot Framework.

---

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

### Créditos
[<img src="C:\Users\Jaque\PycharmProjects\GravidadeZERO\assets\QANinja-Logo.png" width="20%"/>][QANinja]


<!-- links -->
[QANinja]: https://qaninja.academy/
[Yodapp]: https://yodapp-testing.vercel.app

<!-- imagens -->
[QANinja-Logo]: assets/QANinja-Logo.png (QANinja-logo)