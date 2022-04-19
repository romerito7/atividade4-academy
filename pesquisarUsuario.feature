Feature: Gestão de usuários 
    Como pessoa qualquer 
    Desejo pesquisar os usuários 
    Para ter o controle das informações cadastradas

    Background: Base url 
        Given url baseUrl
        And path "search"
        

    Scenario: Pesquisa por nome
        And param value = "Romerito"
        When method get
        Then status 200
        And match response == "#array"
        And match response contains  {id: "#string", name: "#string", email: "#string", createdAt: "#string", updatedAt: "#string"}

    Scenario: Pesquisa por e-mail
        And param value = "romerito@raro.com"
        When method get
        Then status 200
        And match response == "#array"
        And match response contains  {id: "#string", name: "#string", email: "#string", createdAt: "#string", updatedAt: "#string"}


    Scenario: Pesquisa sem retorno
        And param value = "Romeritoooo"
        When method get
        Then status 200
        And match response == "#array"
        


    
        



