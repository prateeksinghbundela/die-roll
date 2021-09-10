class Die
  def initialize(sides)
    @sides = sides
  end

  def die_roll_generate
    rand(@sides) + 1
  end

  def roll(number=1)
    roll_array = []
    number.times do
      roll_array << die_roll_generate
    end
    roll_array.sum
  end
end

sum = []

puts "Die call with different sides"

sum <<  { six: Die.new(6).roll}
sum <<  {eight: Die.new(8).roll}
sum <<  {eight: Die.new(8).roll}
sum << {six: Die.new(6).roll}
sum << {twenty: Die.new(20).roll}

puts sum
puts "sum of dies values"
puts sum.map{|p| p.values.join(",").to_i}.sum
