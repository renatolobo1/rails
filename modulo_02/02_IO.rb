puts "Digite seu nome"
nome = gets.chomp
puts "O seu nome é: " + nome

puts "=================="

puts nome.inspect

puts "=================="


puts "Digite seu Salário"
sal = gets.chomp.to_f
puts "Seu salário atualizado é: " + (sal * 1.10).to_s