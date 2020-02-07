class Pessoa
    def initialize(cont =1)
        cont.times do
        puts "Inicializando....."
        end
    end
    def falar(nome = "Ricardo") 
    nome
    end 
    def falar2(nome = "Ricardo") 
        "Bom dia, #{nome}"
    end 
    def falar3(nome = "Ricardo", sobrenome = "Souza") 
        "#{nome} #{sobrenome}"
    end 
end
     
    p = Pessoa.new(2)
    puts p.falar("Renato")
    puts p.falar2("Lobo")
    puts p.falar3("renato",)