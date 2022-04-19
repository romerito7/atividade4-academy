Feature: Encontrar Usuários 
    Como pessoa qualquer 
    Desejo Consultar dados de um usuário 
    Para visualizar as informações cadastradas

    Background: Base url 
        Given url baseUrl
        And path "users"
        And request usuarioPadrao
        When method post
        * def object = response
        * def idUsuario = object.id
      


    Scenario: Encontrar Usuário
        When path "users/"+idUsuario
        And method get
        Then status 200
        And match response contains  {id: "#string", name: "#string", email: "#string", createdAt: "#string", updatedAt: "#string"} 
        And match response contains  usuarioPadrao 

    Scenario: Usuario não encontrado
        When path "91629ed4-74f9-4e19-9581-a34ff96bf49h"
        And method get
        Then status 404
    