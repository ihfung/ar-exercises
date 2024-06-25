require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

#Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.

@total = Store.sum(:annual_revenue)

puts @total

@count = Store.count
@average = @total / @count

puts @average

@revenue_over_million = Store.where("annual_revenue > 1000000").count

puts @revenue_over_million