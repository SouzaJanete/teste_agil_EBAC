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

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando inserir dados válidos de login com nome de usuário e senha corretos;
            Então O sistema direciona o cliente para a tela de checkout.

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos"
            Quando Inserir dados inválidos de login, como um nome de usuário ou senha incorretos.
            Então A mensagem de alerta informa que os dados inseridos são inválidos, com a mensagem: "Usuário ou senha inválidos".


            Cenário: Recuperar senha fornecendo e-mail associado à conta
            Quando clicar no link "Esqueceu sua senha?" na página de login
            E for redirecionado para a página de recuperação de senha
            E fornecer o e-mail associado à conta na caixa de entrada
            Então deve enviar um e-mail de recuperação de senha para o endereço fornecido com a mensagem de sucesso: "e-mail enviado com instruções para recuperar a senha".

            Cenário: Registrar Último Acesso do Usuário
            Dado que estou na página de administração da plataforma
            Quando o <usuário> fizer login na plataforma
            Então o sistema deve registrar a <data> e <hora> do último acesso

            | Usuário  | Data       | Hora     |
            | joao123  | 2024-02-07 | 10:30:45 |
            | maria456 | 2024-02-06 | 15:20:10 |
            | pedro789 | 2024-02-07 | 08:45:22 |
