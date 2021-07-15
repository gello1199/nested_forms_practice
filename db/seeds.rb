# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chef_one = Chef.create(name: "Swedish Chef")
customer_one = Customer.create(name: "Joe")
Meal.create(name: "Pizza", ingredients: "tomato sauce, cheese, dough", price: 10.50, chef: chef_one, customer: customer_one) 