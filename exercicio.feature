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
Quando O cliente tenta adicionar o produto ao carrinho sem selecionar a cor, tamanho e quantidade obrigatórios;
E O cliente não marca as opções disponíveis e ou não seleciona a cor e ou tamanho e ou quantidade desejada;
Então O sistema exibe uma mensagem de erro indicando que "todas as seleções (cor, tamanho e quantidade) são obrigatórias" para continuar.

Cenário 2: Deve permitir apenas 10 produtos por venda
Quando O cliente tenta aumentar a quantidade de um produto no carrinho além de 10 unidades;
E O cliente ajustar a quantidade para um limite superior a 10;
Então Uma mensagem de erro é exibida, informando ao cliente que o "limite máximo de produtos por venda é de 10 unidades."

Cenário 3: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando O cliente clica no botão "Limpar".
E O sistema exibe uma mensagem de confirmação para garantir que o cliente deseja limpar o carrinho.
Então O sistema exibe uma mensagem de sucesso indicando que o "carrinho foi limpo com sucesso."






Funcionalidade: Login na plataforma  
Descrição:
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

# Critérios de Aceitação:
# 1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
# 2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos

Contexto:
Dado que: O cliente está na página de login da plataforma EBAC-SHOP.

Cenário1: Ao inserir dados válidos deve ser direcionado para a tela de checkout
Quando O cliente insere dados válidos de login, incluindo um nome de usuário e uma senha corretos;
E O sistema verifica a validade dos dados inseridos e confirma que correspondem a um usuário existente na plataforma;
Então O sistema direciona o cliente para a tela de checkout.

Cenário2: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos
Quando O cliente insere dados inválidos de login, como um nome de usuário ou senha incorretos.
E O sistema verifica os dados inseridos e determina que são inválidos.
Então A mensagem de alerta informa ao cliente que os dados inseridos são inválidos, com a mensagem específica: "Usuário ou senha inválidos".






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
Quando O cliente tenta prosseguir para finalizar a compra sem preencher todos os campos obrigatórios marcados com asteriscos (*).
E O sistema impede o avanço do cliente para a finalização da compra.
Então O sistema destaca visualmente os campos obrigatórios que não foram preenchidos, indicando ao cliente "onde as informações necessárias estão faltando."

Cenário2: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro    
Quando O cliente preenche todos os campos obrigatórios, incluindo o campo de e-mail, com um formato inválido.
E O sistema verifica os dados inseridos e determina que o formato do e-mail é inválido.
Então O sistema exibe uma mensagem de erro específica ao lado do campo de e-mail, indicando que o "formato do e-mail é inválido."

Cenário3: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 
Quando O cliente tenta prosseguir para finalizar a compra sem preencher todos os campos obrigatórios marcados com asteriscos (*).
E O sistema impede o avanço do cliente para a finalização da compra.
Então o sistema destaca visualmente os campos obrigatórios que não foram preenchidos, indicando ao cliente "onde as informações necessárias estão faltando."