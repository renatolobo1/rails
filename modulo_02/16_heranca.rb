class Pessoa
    attr_accessor :nome, :email
end

class PessoaFisica < Pessoa
    attr_accessor :cpf

    def falar(texto)
        texto
    end
end

class PessoaJuridida < Pessoa
    attr_accessor :cnpj

    def pagar_fornecedor
         "Pagando fornecedor"
    end
end


p1 = Pessoa.new
puts p1.nome = "Renato"
puts p1.email = "emailtal"

p2 = PessoaFisica.new

# setter
p2.nome = "Feio"
p2.email = "email outro"
p2.cpf = "041.514.444-24"

# Getter
puts p2.nome
puts p2.email 
puts p2.cpf
p2.falar("E ai galera")


p3 = PessoaJuridida.new

# setter
p3.nome = "oi"
p3.email = "email outro"
p3.cnpj= "0000000100"

# Getter
puts p3.nome
puts p3.email 
puts p3.cnpj
p3.pagar_fornecedor
