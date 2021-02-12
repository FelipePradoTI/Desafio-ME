
Funcionalidade: Login
#Sendo um usuário
#Posso acessar o sistema com meu email e senha previamente cadastrado.

#Acesso a pagina de login
Contexto: Pagina de login
Dado que eu acesso a pagina de login

#Usuario cadastrado
@logout
Cenario: Usuário deve ser autorizado

Quando eu faço login com “felipefprado@hotmail.com” e “123456”
Então devo ser autenticado com sucesso
E devo ver a seguinte mensagem “Login com sucesso”

#faz um esquema de cenario para deixar o codigo mais compacto e sem muita repetição
Esquema do Cenario: Tentativa de login 

Quando eu faço login com <email> e <senha>
Então devo ver a mensagem <alerta>

Examplos:
    | email                     | senha     | alerta           |
    | felipefprado@hotmail.com  | 12344456  | Login inválida.  |
    |felipefprado@hmail.com     |123456     |Login inválido.   |
    |                           |           |Campo em branco.  |

