            #language: pt

            Funcionalidade: Configurar produtos

            Descrição:
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            # Critérios de Aceitação:
            # 1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
            # 2 – Deve permitir apenas 10 produtos por venda
            # 3 –Quando eu clicar no botão “limpar” deve voltar ao estado original

            Contexto:
            Dado que: O cliente está na página de detalhes do produto na EBAC-SHOP e deseja comprar um produto;

            Cenário1: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando Adicionar o produto ao carrinho sem selecionar a cor, tamanho e quantidade obrigatórios;
            Então O sistema exibe uma mensagem de erro indicando que "todas as seleções (cor, tamanho e quantidade) são obrigatórias" para continuar.

            Cenário 2: Deve permitir apenas 10 produtos por venda
            Quando Aumentar a quantidade de um produto no carrinho além de 10 unidades;
            Então Uma mensagem de erro é exibida, informando ao cliente que o "limite máximo de produtos por venda é de 10 unidades."

            Cenário 3: Quando eu clicar no botão “limpar” deve voltar ao estado original
            Quando Clicar no botão "Limpar".
            E O sistema exibe uma mensagem de confirmação para garantir que deseja limpar o carrinho.
            Então O sistema exibe uma mensagem de sucesso indicando que o "carrinho foi limpo com sucesso."

            Cenário 4: Adicionar produto personalizado ao carrinho
            Quando Personalizar um produto selecionando cor, tamanho e quantidade desejados.
            E clicar no botão "Adicionar ao Carrinho".
            Então o sistema adiciona o produto personalizado ao carrinho e exibe uma mensagem de sucesso "Produto adicionado com sucesso".


            Esquema de Cenário

            Funcionalidade: Configuração de Produto na EBAC-SHOP

            Como um cliente da EBAC-SHOP

            Eu quero ser capaz de configurar um produto com cor, tamanho e quantidade

            Para que eu possa inseri-lo corretamente no carrinho de compras

            Esquema do Cenário: Configurar produto com diferentes opções de cor, tamanho e quantidade

            Dado que o cliente está na página de detalhes do produto na EBAC-SHOP

            Quando selecionar a <cor>, <tamanho> e <quantidade> desejados

            Então o sistema deve adicionar o produto ao carrinho corretamente


            | cor      | tamanho   | quantidade   |
            | -------- | --------- | ------------ |
            | Azul     | M         | 2            |
            | Preto    | G         | 1            |
            | Verde    | P         | 3            |
            | Rosa     | P         | 4            |