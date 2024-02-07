            #language: pt

            Funcionalidade: Tela de cadastro - Checkout

            Descrição:
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            # Critérios de Aceitação:
            # 1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            # 2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            # 3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.



            Contexto:
            Dado que: O cliente está na tela de cadastro durante o processo de checkout da EBAC-SHOP.

            Cenário1: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando Tentar prosseguir para finalizar a compra sem preencher todos os campos obrigatórios marcados com asteriscos (*).
            E O sistema impede o avanço para a finalização da compra.
            Então O sistema destaca visualmente os campos obrigatórios que não foram preenchidos, indicando "onde as informações necessárias estão faltando."

            Cenário2: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando Preencher todos os campos obrigatórios, incluindo o campo de e-mail, com um formato inválido.
            Então O sistema exibe uma mensagem de erro específica ao lado do campo de e-mail, indicando que o "formato do e-mail é inválido."

            Cenário3: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando Tentar prosseguir para finalizar a compra sem preencher todos os campos obrigatórios marcados com asteriscos (*).
            E O sistema impede o avanço do cliente para a finalização da compra.
            Então o sistema destaca visualmente os campos obrigatórios que não foram preenchidos, indicando "onde as informações necessárias estão faltando."



            Esquema de Cenário

            Funcionalidade: Registro de Informações de Cadastro no Checkout

            Descrição:
            Como cliente da EBAC-SHOP,
            Eu quero ser capaz de fornecer as informações necessárias no checkout,
            Para concluir meu cadastro e finalizar minha compra com sucesso.

            Esquema do Cenário: Preencher Informações de Cadastro no Checkout

            Dado que estou na tela de checkout da EBAC-SHOP
            Quando preencher todos os campos obrigatórios de cadastro
            E clicar no botão "Finalizar Compra"
            Então o sistema deve registrar as informações de cadastro do cliente
            E processar o pedido com sucesso.

            | Nome  | Sobrenome | Email                    | Endereço              | Cidade         | CEP        |
            | João  | Silva     | joao.silva@example.com   | Rua das Flores, 123   | São Paulo      | 01234-567  |
            | Maria | Santos    | maria.santos@example.com | Av. das Palmeiras, 45 | Rio de Janeiro | 98765-432  |
            | Ana   | Pereira   | ana.pereira@example.com  | Recanto Faraó, SN     | Goiás          | 725000-985 |


