class Pessoa
    def falar # Método de instância / Precisa instanciar
        "Oi galera"
    end

    def self.gritar(texto) # Método de classe / NÃO precisa instanciar
        "#{texto}!!!!"
    end
end

p1 = Pessoa.new
puts p1.falar

puts Pessoa.gritar("ACORDA")