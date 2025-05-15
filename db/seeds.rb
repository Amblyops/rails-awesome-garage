# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning the DB"

Owner.destroy_all
Car.destroy_all

puts "creating owners"

ife = Owner.create!(nickname: "Ife500")
deji = Owner.create!(nickname: "DejiGasGas")
claire = Owner.create!(nickname: "WonderClaire")
ben = Owner.create!(nickname: "BenMcClaren")

puts "number of owners created #{Owner.count}"

puts "creating cars"

Car.create!(brand: "Mercedes", model: "A-Class Hatchback", year: 2024, fuel: "Unleaded petrol", owner: deji)
Car.create!(brand: "Peugeot", model: "308", year: 2017, fuel: "unleaded petrol", owner: ife)
Car.create!(brand: "BMW", model: "mini-cooper", year: 2025, fuel: "Unleaded Petrol", owner: claire)

puts "number of cars created #{Car.count}"
