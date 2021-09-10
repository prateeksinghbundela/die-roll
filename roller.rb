class Die

  def initialize(sides)
    @sides = sides
  end

  def roll(number=1)
    roll_array = []
    number.times do
      roll_value = rand(@sides) + 1
      roll_array << roll_value
    end
    total = roll_array.sum
    if number == 1
      puts "Dice1 = " + roll_array[0].to_s
    elsif number == 2
      puts "Dice1 = "+roll_array[0].to_s+ " "+"Dice2 = "+roll_array[1].to_s
    end
    total 
  end
end


class Die2
  def initialize(side1, side2)
    @sides1 = side1
    @sides2 = side2
  end

  def roll(number=1)
    roll_array = []
    number.times do
      roll_value1 = rand(@sides1) + 1
      roll_value2 = rand(@sides2) + 1
      roll_array << roll_value1
      roll_array << roll_value2
    end
    total = roll_array.sum
    puts "Dice1= "+roll_array[0].to_s+ " "+"dice2= "+roll_array[1].to_s
    total
    
  end

end


puts "We're rolling a 6 sided die!"
puts Die.new(6).roll

puts "Now we're rolling two 8 sided die!"
puts Die2.new(8,8).roll

puts "We're rolling a single 6-sided die and a 20-sided die."
puts Die2.new(6, 20).roll
