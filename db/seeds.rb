require "open-uri"
Ingredient.destroy_all

json = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read

items = JSON.parse(json)

items["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end

# use a lot of p to debug the each through the json object

