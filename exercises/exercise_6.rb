require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
puts "Number of stores: #{Store.count}"

@store1 = Store.find_by(name: "Gastown")
pp @store1
@store1.employees.create(first_name: "Philip", last_name: "Dickau", hourly_rate: 80)
@store1.employees.create(first_name: "Parker", last_name: "Thiessen", hourly_rate: 60)
@store1.employees.create(first_name: "Max", last_name: "Uhlich", hourly_rate: 70)

@store2 = Store.find_by(name: "Richmond")
@store2.employees.create(first_name: "Amy", last_name: "McLean", hourly_rate: 60)
@store2.employees.create(first_name: "Robyn", last_name: "Taylor-Neu", hourly_rate: 80)
@store2.employees.create(first_name: "Mitchell", last_name: "Hopkins", hourly_rate: 70)

puts Employee.all