# Faz uma classe com os atributos principais
class LoginPage 
    include Capybara::DSL

    def faz_Login(email, senha)
        find ('imput[name=email]').set email #Pega os imputs da pagina 
        find ('imput[name=passwd]').set senha
        click_button button
    end
end    
