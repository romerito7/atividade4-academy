Feature: Encontrar Usuários 
    Como pessoa qualquer 
    Desejo Consultar dados de um usuário 
    Para visualizar as informações cadastradas

    Background: Base url 
        Given url baseUrl
        And path "users"

    Scenario: Encontrar Usuário
        When path "91629ed4-74f9-4e19-9581-a34ff96bf49f"
        And method get
        Then status 200

    Scenario: Usuario não encontrado
        When path "91629ed4-74f9-4e19-9581-a34ff96bf49h"
        And method get
        Then status 400
    