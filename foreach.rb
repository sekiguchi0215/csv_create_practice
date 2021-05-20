require "csv"
require "pry"

list = []
CSV.foreach("okinawa_area.csv", headers: true) do |row|
  list << { id: row["id"].to_i, country: row["郡"], city: row["市区町村"], area: row["面積"].to_f }
end

p list.find { |data| data[:id] == 6 }

p list.find { |data| data[:city] == "南大東村" }

p list.find_all { |data| data[:area] >= 100 }