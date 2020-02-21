require "open-uri"
# Ingredient.destroy_all

# json = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read

# items = JSON.parse(json)

# items["drinks"].each do |ingredient|
#   Ingredient.create!(name: ingredient["strIngredient1"])
# end

# use a lot of p to debug the each through the json object

require 'faker'
Cocktail.destroy_all


puts "creating..."
n = 0
4.times do
  n += 1
  cocktail = Cocktail.new(
    name: Faker::TvShows::BreakingBad.episode
  )

  file = File.open("#{n}.jpg")
  cocktail.photo.attach(io: file, filename: "#{n}.jpg", content_type: 'image/jpg')
  cocktail.save!
end

puts "...finished"


