puts "cleaning DB"
Restaurant.destroy_all

puts "adding restaurants"

Restaurant.create!(name: "Alicheur", address: "Oberkampf", category: "chinese", phone_number: "0033662685381")
puts "1 added"
Restaurant.create!(name: "OberMama", address: "Parmentier", category: "italian")
puts "2 added"
Restaurant.create!(name: "Chez Justine", address: "St Maur", category: "french", phone_number: "0033660688367")
puts "3 added"
Restaurant.create!(name: "Chez Tong", address: "Lyon", category: "japanese")
puts "4 added"
Restaurant.create!(name: "La bonne gauffre", address: "Bruxels", category: "belgian")

puts "finished"
