#Ter acesso a pagina login
Dado('que eu acesso a pagina de login') do 
    visit 'https://automationpractice.com/index.php?controller=authentication&back=identity'
end

#Pega a classe login da Pages.rb
Quando('eu faço login com {string} e {string}') do |email, senha|
   
    @email = email
    LoginPage.new.faz_Login(email, senha)
end

#Ter acesso ao site
Então('devo ser autenticado com sucesso') do 
    expect(page).to have_content @email
end

#Receber a mensagem
Dado('devo ver a seguinte mensagem {string}') do |mensagem| 
expect(page).to have_content mensagem
end

#Fazer logout para testar os outros cenarios para não dar erro
After('@logout') do 
   click_link 'sign out' 
end    