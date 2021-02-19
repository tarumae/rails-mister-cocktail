# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

parsed_json = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

parsed_json['drinks'].each do |obj|
  Ingredient.create(name: obj['strIngredient1'])
end

Cocktail.create(name: 'Negroni')
Cocktail.create(name: 'Martini')
Cocktail.create(name: 'Sidecar')
Cocktail.create(name: 'Old Fashioned')
Cocktail.create(name: 'Brandy Alexander')
Cocktail.create(name: 'Mojito')
Cocktail.create(name: 'Margarita')
Cocktail.create(name: 'Polar Bear')
