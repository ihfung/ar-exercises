require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

whistler = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

yaletown = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

#sql version of select * from stores where mens_apparel = true
@men_stores = Store.where(mens_apparel: true)

#loop through each of these stores and output their name and annual revenue on each line.
@men_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

#sql version of select * from stores where womens_apparel = true and annual_revenue < 1000000
@women_stores = Store.where(womens_apparel: true).where("annual_revenue < 1000000")

#loop through each of these stores and output their name and annual revenue on each line.
@women_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end