def arabic_to_roman (number)

  result = ""

  hash = {
    500 => "D",
    400 => "CD",
    100 => "C",
    50 => "L",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  hash.each do |k, v|
    while number >= k
      number -= k
      result += v
    end
  end

  return result

end

def roman_to_arabic (number)

  hash = {}

  for i in 1..399
    hash[i] = arabic_to_roman(i)   
  end

  hash.each do |k, v|
    if number == v
      puts k
    end
  end

end

print "Please enter a Arabic nouber: "
number = gets.chomp
puts arabic_to_roman(number.to_i)


print "Please enter a Roman nouber: "
number = gets.chomp
roman_to_arabic(number)