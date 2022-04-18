Feature: Gestão de usuários 
    Como pessoa qualquer
    Desejo alterar os usuários 
    Para ter o controle das informações cadastradas

    Background: Base url 
        Given url baseUrl
        And path "users"
        And request usuarioPadrao
        When method post
        * def object = response
        * def idUsuario = object.id

    Scenario: Atulizar usuário Usuário
        When path "users/"+idUsuario
        And request usuarioPadrao
        And method put
        Then status 200    

    Scenario: Atualizar usuario com id não localizado
        When path "users/91629ed4-74f9-4e19-9581-a34ff96bf49h"
        And request usuarioPadrao
        And method put
        Then status 400  

    Scenario: Atualizar usuario com email não formatado
        When path "users/"+idUsuario
        And request {"name": "Romerito","email": "romeritorarocom"}
        And method put
        Then status 400  

    Scenario: Atualizar usuario com email já existente
        When path "users/"+idUsuario
        And request {"name": "Romerito","email": "romerito@raro.com"}
        And method put
        Then status 422 
        And match response contains {"error":"E-mail already in use."}

    

