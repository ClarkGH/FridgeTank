# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
devin = User.create(email: "devin@example.com", password: "password")
clark = User.create(email: "clark@example.com", password: "password")
brian = User.create(email: "brian@example.com", password: "password")

devin.grocery_lists << GroceryList.create(name: "Video Game Grub")
clark.grocery_lists << GroceryList.create(name: "Fat Man Food")
brian.grocery_lists << GroceryList.create(name: "Football Game Foodz")

devin.grocery_lists.first.ingredients << Ingredient.create(name: "Doritos")
devin.grocery_lists.first.ingredients << Ingredient.create(name: "Mountain Dew")

clark.grocery_lists.first.ingredients << Ingredient.create(name: "Meatloaf")
clark.grocery_lists.first.ingredients << Ingredient.create(name: "Twinkies")

brian.grocery_lists.first.ingredients << Ingredient.create(name: "Chicken Wings")
brian.grocery_lists.first.ingredients << Ingredient.create(name: "Cheese")