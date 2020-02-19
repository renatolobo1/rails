# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando as moedas...."

Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    url_imagem: "http://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png"
)

Coin.create!(
    description: "Dollar",
    acronym: "$",
    url_imagem: "https://img2.gratispng.com/20171128/f9e/gold-coin-transparent-png-clipart-5a1d22de435229.9520313415118589102758.jpg"
)

Coin.create!(
    description: "Dash",
    acronym: "DA",
    url_imagem: "https://img2.gratispng.com/20171128/f9e/gold-coin-transparent-png-clipart-5a1d22de435229.9520313415118589102758.jpg"
)

puts "Moedas cadastrada com sucesso...."