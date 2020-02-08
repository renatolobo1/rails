require_relative 'pagamentos'

include Pagamento

p1 = Visa.new
puts p1.pagando