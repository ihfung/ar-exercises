require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 40)
@store1.employees.create(first_name: "Jim", last_name: "Doe", hourly_rate: 30)

@store2.employees.create(first_name: "Jack", last_name: "Doe", hourly_rate: 20)
@store2.employees.create(first_name: "Karina", last_name: "Doe", hourly_rate: 10)
@store2.employees.create(first_name: "Danielle", last_name: "Doe", hourly_rate: 5)
@store2.employees.create(first_name: "Jessica", last_name: "Doe", hourly_rate: 1)

puts @store1.employees.count

puts @store2.employees.count