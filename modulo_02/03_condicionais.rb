# ESTRUTURA CONDICIONAL TERNÁRIA

sexo = 'M'
# if sexo == 'M'
#     puts 'Masculino'
# else 
#     puts 'Feminino'
# end

sexo == 'M' ? (puts 'Masculino') :  (puts 'Feminino')



# IF

print 'Digite um Número: '
x = gets.chop.to_i
if x > 2
    puts 'x é maior que 2'
end


# unless = a menos que

# print 'Digite um Número: '
# x = gets.chop.to_i
# unless x >= 2
#     puts 'x é menor que 2'
# else
#     puts 'x é maior que 2'
# end

# CASE

# print 'Digite uma Idade: '
# idade = gets.chop.to_i

# case idade
# when 0..2
#     puts "bebê"
# when 3..12
#     puts "Criança"
# when 13..18
#     puts "Adolescente"
# else
#     puts "Adulto"
# end
