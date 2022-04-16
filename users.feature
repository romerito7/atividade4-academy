Feature: Gestão de usuários 
    Como um gestor de ususários 
    Desejo gerenciar os usuários 
    Para ter o controle das informações cadastradas

    Background: Base url 
        Given url "https://crud-api-academy.herokuapp.com/api/v1/"
        And path "users"

    Scenario: Listar Usuário
    When method get
    Then status 200

    Scenario: Criar usuário
    And request {"name": "Name Suna","email": "ugggr@example.com"}
    When method post
    Then status 201
