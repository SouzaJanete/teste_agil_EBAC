 #language: pt


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
            Quando Inserir dados válidos de login, incluindo um nome de usuário e uma senha corretos;
            Então O sistema direciona o cliente para a tela de checkout.

            Cenário2: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos"
            Quando Inserir dados inválidos de login, como um nome de usuário ou senha incorretos.
            Então A mensagem de alerta informa ao cliente que os dados inseridos são inválidos, com a mensagem específica: "Usuário ou senha inválidos".


            Cenário3: Recuperar senha fornecendo e-mail associado à conta
            Quando clicar no link "Esqueceu sua senha?" na página de login
            E for redirecionado para a página de recuperação de senha
            E fornece seu e-mail associado à conta na caixa de entrada designada
            Então o sistema deve enviar um e-mail de recuperação de senha para o endereço fornecido
            E exibir uma mensagem de sucesso informando que um "e-mail foi enviado com instruções para recuperar a senha".



            Esquema de Cenário

            Funcionalidade: Registro de Último Acesso na Plataforma

            Descrição:
            Como um administrador da plataforma,
            Eu quero ser capaz de registrar o último acesso de cada usuário,
            Para que possamos monitorar a atividade dos usuários e garantir a segurança da plataforma.

            Esquema do Cenário: Registrar Último Acesso do Usuário

            Dado que estou na página de administração da plataforma
            Quando um usuário fizer login na plataforma
            Então o sistema deve registrar a data e hora do último acesso do usuário
            E atualizar o campo de "Último Acesso" no banco de dados do usuário.

            Exemplo:

            | Usuário  | Último     | Acesso   |
            | joao123  | 2024-02-07 | 10:30:45 |
            | maria456 | 2024-02-06 | 15:20:10 |
            | pedro789 | 2024-02-07 | 08:45:22 |
