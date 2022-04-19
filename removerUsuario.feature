Feature: Gestão de usuários 
    Como pessoa qualquer 
    Desejo remover um usuário
    Para que suas informações não estejam mais registradas

    Background: Base url 
        Given url baseUrl
        And path "users"
        And request usuarioPadrao
        When method post
        * def object = response
        * def idUsuario = object.id

    Scenario: remover usuario existente  
        Given path "users/"+idUsuario
        And method delete
        Then status 204

    Scenario: remover usuario não existente  
        Given path "users/"+idUsuario
        And method delete
        Then status 204    