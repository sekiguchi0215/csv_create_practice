require "csv"

array = CSV.read("okinawa_area.csv")

p array

puts "1行目に対応する配列"
p array[0]
puts "2行目に対応する配列"
p array[1]
