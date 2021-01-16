#language: pt


Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais - Ator
    Quero fazer o meu cadastro no RockLov - Funcionalidade
    Para que eu possa disponibilizá-los para locação - Valor de negócio

    @cadastro
    Cenário: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro completo
        Então sou redirecionado para o Dashboard
    @tentativa_cadastro
    Cenário: Submeter cadastro sem o nome

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o nome
        Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"
    @tentativa_cadastro
    Cenário: Submeter o cadastro sem o email

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o email
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"
    @tentativa_cadastro
    Cenário: Submeter o cadastro com o email inválido

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com email incorreto
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"
    @tentativa_cadastro
    Cenário: Submeter o cadastro sem a senha

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"