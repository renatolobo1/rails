namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?     
      show_spinner("Apagando BD...") {%x(rails db:drop)}      
      show_spinner("Criando BD...", "Criado!") {%x(rails db:create )}
      show_spinner("Migrando BD...")  {%x(rails db:migrate )}
      %x(rails dev:add_mining_types)  
      %x(rails dev:add_coins)  
    else
      puts "você não está em modo de desenvolvimento!"
    end
  end
  
  desc "Cadastra as Moedas"
  task add_coins: :environment do 
    show_spinner("Cadastrando Moedas...") do
      coins = [      
              {
                  description: "Bitcoin",
                  acronym: "BTC",
                  url_imagem: "http://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png",
                  mining_type: MiningType.all.sample
              },
              {
                  description: "Dollar",
                  acronym: "$",
                  url_imagem: "https://img2.gratispng.com/20171128/f9e/gold-coin-transparent-png-clipart-5a1d22de435229.9520313415118589102758.jpg",
                  mining_type: MiningType.all.sample

              },
              {
                  description: "Dash",
                  acronym: "DA",
                  url_imagem: "https://img2.gratispng.com/20171128/f9e/gold-coin-transparent-png-clipart-5a1d22de435229.9520313415118589102758.jpg",
                  mining_type: MiningType.all.sample

              }
          ]

    coins.each do |coin|
      Coin.find_or_create_by!(coin)
    end
  end
end
desc "Cadastra os tipos de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando Tipos de Mineração...") do
      mining_types = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of State", acronym: "PoS"},
        {description: "Proof of capacity", acronym: "PoC"}
      ]

    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
    end
  end
end


  private
  
    def show_spinner(msg_start, msg_end="concluido")
      spinner = TTY::Spinner.new("[:spinner] #{msg_start}", format: :dots_5)
      spinner.auto_spin
      yield
      spinner.success("#{msg_end}")

  end
  
end
