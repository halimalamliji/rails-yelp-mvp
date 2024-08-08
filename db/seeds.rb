# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Je nettoie la base de donnée ma gueule, c'est chiant c'est toujours moi qui le fait wesh..."

Restaurant.destroy_all

attributes = [
  { name: 'Mama Shelter', address: '19 rue Poquelin Molière', phone_number: '05 32 69 87 54', category: 'french' },
  { name: 'Poggetti', address: '32 rue Gaspard Philippe', phone_number: '05 56 78 36 45', category: 'italian' },
  { name: 'Mitsuba', address: '11 rue Piliers de Tutelle', phone_number: '05 57 65 84 29', category: 'japanese' },
  { name: 'Big Fernand', address: '5 rue Guiraude', phone_number: '05 37 19 27 68', category: 'belgian' },
  { name: 'Chez Dupont', address: '45 rue Notre Dame', phone_number: '05 92 51 73 84', category: 'french' }
]

attributes.each do |attribute|
  restaurant = Restaurant.create(attribute)
  puts "#{restaurant.name} a été créé"
end

puts "#{Restaurant.count} créés! Vas y jprend une pause j'ai trop bossé"
