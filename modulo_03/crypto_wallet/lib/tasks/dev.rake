namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?     
      show_spinner("Apagando BD...") {%x(rails db:drop)}      
      show_spinner("Criando BD...", "Criado!") {%x(rails db:create )}
      show_spinner("Migrando BD...")  {%x(rails db:migrate )}
      show_spinner("populando BD...") {%x(rails db:seed)}      
    else
      puts "você não está em modo de desenvolvimento!"
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
