            #language: pt

            Funcionalidade: Tela de login

            Como usuário do portal RaroFlix
            Quero me autenticar
            Para consultar e escolher um filme

            Contexto: Dado que eu acesse a página de autenticação da RaroFlix

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joão@raroacademy.com"
            E a senha "senha@123"
            Então deve exibir uma mensagem de sucesso.

            Cenário: Usuário já cadastrado
            Quando eu digitar em cadastro novamente o usuário "joão@raroacademy.com"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário já cadastrado"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "joãoninguem@raroacademy.com"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joão@raroacademy.com"
            E a senha "erro@1234"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Funcionalidade: Cadastrar usuário
            Como visitante do portal RaroFlix
            Quero me cadastrar
            Para acessar e pesquisar os filmes

            Contexto: Dado que eu acesse a página de cadastro da Raroflix

            Cenário: Cadastro de usuário com e-mail único
            Quando eu digitar o email "joão@raroacademy.com"
            E a senha "senha@123"
            Então deve exibir uma mensagem de sucesso.

            Cenário: Cadastro de usuário com repetição de e-mail
            Quando eu digitar novamente o email "joão@raroacademy.com"
            E a senha "senha@12345"
            Então deve exibir uma mensagem de alerta: "Este usuário já possui cadastro"

            Esquema do Cenário: Cadastrar múltiplos usuários
            Quando eu digitar o <email>
            E a <senha>
            Então deve exibir a <mensagem> .

            Exemplos:
            | email                   | senha           | mensagem                                 |
            | "joão@raroacademy.com"  | "123456"        | "usuário cadastrado com sucesso"         |
            | "maria@raroacademy.com" | "123456789abc"  | "usuário cadastrado com sucesso"         |
            | "jose@raroacademy.com"  | "12345"         | "Senha deve conter entre 6 e 12 dígitos" |
            | "jose@raroacademy.com"  | "123456789abcd" | "Senha deve conter entre 6 e 12 dígitos" |

            Funcionalidade: Alterar dados no sistema
            Como usuário do portal RaroFlix
            Quero me acessar a página de configurações
            Para alterar meus dados cadastrais

            Contexto: Dado que eu acesse a página de configurações da RaroFlix

            Cenário: Usuário alterando seus próprios dados
            Quando eu corrigir o meu nome
            E redefinir uma nova senha 
            Então deve exibir uma mensagem de sucesso: "Dados alterados com sucesso"

            Cenário: Usuário alterando dados de outros usuários
            Quando eu tentar corrigir o nome
            E redefinir uma nova senha 
            Então deve exibir uma mensagem de alerta: "Desculpe! Somente adm podem alterar dados de outros usuários"

            Cenário: Adm alterando seus próprios dados
            Quando eu corrigir o meu nome
            E redefinir uma nova senha 
            Então deve exibir uma mensagem de sucesso: "Dados alterados com sucesso"

            Cenário: Adm alterando dados de outros usuários
            Quando eu tentar corrigir o nome
            E redefinir uma nova senha 
            Então deve exibir uma mensagem de sucesso: "Dados alterados com sucesso"

            Funcionalidade: Consultar dados
            Como usuário do portal RaroFlix
            Quero consultar os meus dados 
            Para verificar as informações

            Contexto: Dado que eu clique em consulta de dados no portal RaroFlix

            Cenário: Usuário consultando seus prórpios dados
            Quando eu clicar em consultar dados 
            E informar os meus dados cadastrais 
            Então deve retornar as informações de cadastro

            Cenário: Usuário consultando dados de outros usuários
            Quando eu clicar em consultar dados 
            E informar os dados de outro usuário 
            Então deve exibir uma mensagem de alerta: "Desculpe! Somente adm podem consultar dados de outros usuários"

            Cenário: Adm consultando seus prórpios dados
            Quando eu clicar em consultar dados 
            E informar os meus dados cadastrais 
            Então deve retornar as informações de cadastro com sucesso

            Cenário: Usuário consultando dados de outros usuários
            Quando eu clicar em consultar dados 
            E informar os dados de outro usuário 
            Então deve retornar as informações de cadastro com sucesso 

            Funcionalidade: Promover usuário
            Como Adm do portal RaroFlix
            Quero poder ter autonomia no sistema 
            Para promover usuários a crítico ou Adm

            Dado que eu consulte um usuário comum
            Quando eu clicar em promover a crítico
            Então o status deverá ser alterado para usuário crítico

            Dado que eu consulte um usuário comum
            Quando eu clicar em promover a Adm
            Então o status deverá ser alterado para Adm

            Dado que eu consulte um usuário crítico
            Quando eu clicar em promover a Adm
            Então o status deverá ser alterado para Adm

            Funcionalidade: Inativar conta
            Como usuário do portal RaroFlix
            Quero poder acessar a página de editar perfil 
            Para inativar a minha conta

            Contexto: Dado que eu a página de edição de perfil

            Quando eu clicar inativar conta 
            E informar a minha senha 
            Então a conta deverá ser inativada.

            Quando eu clicar inativar conta 
            E informar uma senha incorreta
            Então deverá exibir uma mensagem de alerta:"Senha incorreta"

            Funcionalidade: Usuário excluir conta definitivamente
            Como usuário do portal RaroFlix
            Quero poder acessar a página de editar perfil 
            Para poder excluir contas definitivamente

            Contexto: Dado que eu acesse a página de edição de perfil

            Quando eu clicar excluir conta 
            E informar a minha senha 
            Então a conta deverá ser excluída

            Quando eu clicar excluir conta 
            E informar uma senha incorreta
            Então deverá exibir uma mensagem de alerta:"Senha incorreta"

            Funcionalidade: Adm excluir conta definitivamente
            Como Adm do portal RaroFlix
            Quero poder acessar a página de configurações 
            Para poder excluir contas definitivamente

            Contexto: Dado que eu acesse a página de configurações

            Quando eu clicar em excluir conta 
            E informar a minha senha 
            Então a conta deverá ser excluida

            Quando eu clicar em excluir conta
            E consultar o usuário a ser excluído
            E informar a minha senha 
            Então a conta do usuário selecionado deverá ser excluida

            Funcionalidade: Criar review
            Como usuário do portal RaroFlix
            Quero poder me autenticar  
            Para adicionar review de filmes cadastrados

            Contexto: Dado que eu acesse a página de filmes

            Quando eu submeter um review no sistema
            Então o mesmo deverá ficar registrado na página do filme

            Quando eu submeter um segundo review em um filme 
            Então deverá exibir uma mensagem de alerta:"Deseja substituir a avaliação? Sim / Não"

            Funcionalidade: Consulta detalhada de filmes
            Como visitante do portal RaroFlix
            Quero ter acesso a opção selecionar filme  
            Para poder ver detalhes do filme selecionado

            Dado que eu acesse a página inicial da RaroFlix
            Quando eu clicar em ver detalhes mesmo deslogado
            Então deverá me retornar a página do filme
            E as reviews juntamente com os dados dos avaliadores

            













