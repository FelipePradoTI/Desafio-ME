#Fazer logout do usuario
after ('@logout') do 
    click_link 'Sign out'
  end

  # Mostra no html o nome do cenario que foi executado
  after do |scenario|
    nome_cenario = scenario.name.gsub(' ','_').downcase
    puts nome_cenario
  end