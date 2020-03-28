namespace :dev do

DEFAULT_PASSWORD = 123456



  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?     
      show_spinner("Apagando BD...") {%x(rails db:drop)}      
      show_spinner("Criando BD...", "Criado!") {%x(rails db:create )}
      show_spinner("Migrando BD...")  {%x(rails db:migrate )}
      show_spinner("Criando o Administrador padrão...") { %x(rails dev:add_default_admin) }
      show_spinner("Cadastrando o usúario padrão...")  {%x(rails dev:add_default_user )}
      #%x(rails dev:add_mining_types)  
        
    else
      puts "você não está em modo de desenvolvimento!"
    end
  end

  desc "Adicionar o administrador padrão"
  task add_default_admin: :environment do
    Admin.create!(
      email: 'renatolobo_@hotmail.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD,
    )
  end

  desc "Adicionar o usúario padrão"
  task add_default_user: :environment do
    User.create!(
      email: 'renatoloboguedes@gmail.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD,
    )
  end
    
  private
    
  def show_spinner(msg_start, msg_end="concluido")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}", format: :dots_5)
    spinner.auto_spin
    yield
    spinner.success("#{msg_end}")
  
  end
end
