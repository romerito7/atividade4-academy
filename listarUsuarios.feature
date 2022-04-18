Feature: Listar usuários 
    Como pessoa qualquer 
    Desejo listar os usuários 
    Para visualizar as informações cadastradas

    Background: Base url 
        Given url baseUrl
        And path "users"

    Scenario: Listar Usuário
        When method get
        Then status 200
        And match response == "#array"
        And match response contains  {id: "#string", name: "#string", email: "#string", createdAt: "#string", updatedAt: "#string"}
    










    
