

x = "Renato"
y = 'Lobo'

puts x +" "+ y
puts x
puts x <<" "<< y # << acrescenta na variavel, modificando o X
puts x

puts "======================"

x = 'Curso'
puts x.object_id
x = x + "rails"
puts x
puts x.object_id

puts "======================"

x = 'Curso'
puts x.object_id
x = x << "rails"
puts x
puts x.object_id

puts "======================"

h = "Renato #{1+1} Lobo #{x}"
puts h