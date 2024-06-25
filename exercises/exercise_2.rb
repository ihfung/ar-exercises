require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

#sql version of select * from stores where id = 1
@store1 = Store.find_by(id:1)
@store2 = Store.find_by(id:2)

#sql version of update store set name = "Toronto" where id = 1 
@store1.update(name: "Toronto")

puts @store1.name
