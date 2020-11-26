# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Ingredient.destroy_all
Cocktail.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "heavy cream")
Ingredient.create(name: "truffle oil")


Cocktail.create(name: "Tactical Bunker Buster")
Cocktail.create(name: "Sinking Red Submarine")
Cocktail.create(name: "Liberation of Stalingrad")
Cocktail.create(name: "Fires of Mosul")
Cocktail.create(name: "Destruction of Z-Force")