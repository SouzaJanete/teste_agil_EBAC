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

      Cenário: Restrição de Quantidade na EBAC-SHOP
      Quando tentar adicionar mais de 10 produtos ao carrinho
      E a compra não for permitida
      Então o sistema deve exibir uma mensagem de erro indicando que "excedeu o limite de produtos por venda"

      Cenário: Limpar Seleção de Produto na EBAC-SHOP
      Quando Selecioanar a cor, o tamanho e a quantidade do produto
      E clicar no botão "limpar"
      Então as seleções de cor, tamanho e quantidade serão resetadas para os valores padrão 
      E deve exibir uma mensagem "Itens Apagados com Sucesso"

      Cenário: Selecionar Item Fora de Estoque no Checkout
      Quando selecionar um item fora de estoque
      E tentar finalizar a compra
      Então deve exibir uma mensagem de erro "item está fora de estoque"

      Cenário: Preencher Informações de Cadastro no Checkout
      Quando inserir os campos <cor>, <tamanho>, <quantidade> para cada item
      E clicar no botão "Finalizar Compra"
      Então deve processar o pedido com sucesso.

      | cor   | tamanho | quantidade |
      | Azul  | M       | 2          |
      | Preto | G       | 1          |
      | Verde | P       | 3          |
      | Rosa  | P       | 4          |