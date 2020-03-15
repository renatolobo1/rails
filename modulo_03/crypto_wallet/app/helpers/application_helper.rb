module ApplicationHelper
    def locale(locale)
        if I18n.locale == :en
            "Estados Unidos"
        else
            "Português do Brasil"
        end
    end
    
    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def nome_aplicacao
        "CRYPTO WALLET APP"
    end

    def ambiente_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.test
            "Teste"
        else
        end
    end
    
end
