Feature: Criar Usuários 
    Como pessoa qualquer 
    Desejo Criar os usuários 
    Para ter o controle das informações cadastradas

    Background: Base url 
        Given url baseUrl
        And path "users"

    Scenario: Criar usuário
        And request usuarioPadrao
        When method post
        Then status 201

    Scenario: Criar usuário com e-mail inválido
        And request {"name": "Romerito","email": "romerito"}
        When method post
        Then status 400

    Scenario: Criar usuário com e-mail existente
        And request {"name": "Romerito","email": "romerito@raro.com"}
        When method post
        Then status 422
        And match response contains {"error":"User already exists."}

    Scenario: Criar usuário com nome maior 100 caracteres
        And request usuario100
        When method post
        Then status 400

     Scenario: Criar usuário com e-mail maior 60 caracteres
        And request email60
        When method post
        Then status 400

        