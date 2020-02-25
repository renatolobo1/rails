namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Apagando BD...")
      spinner.auto_spin
      puts %x(rails db:drop)
      spinner.success('Apagado com sucesso!')

      spinner = TTY::Spinner.new("[:spinner] Criando BD...")
      spinner.auto_spin
      puts %x(rails db:create )
      spinner.success('Criado com sucesso!')

      spinner = TTY::Spinner.new("[:spinner] Migrando BD...")
      spinner.auto_spin
      puts %x(rails db:migrate )
      spinner.success('Migrado com sucesso!')

      spinner = TTY::Spinner.new("[:spinner] Alimentando BD...", format: :dots_5)
      spinner.auto_spin
      puts %x(rails db:seed)
      spinner.success('Alimentado com sucesso!!')
    else
      puts "você não está em modo de desenvolvimento!"
    end
  end
  
end
