def compute_1 (number)
    if number % 15 == 0
    	puts "fifteen *"
    elsif number % 5 == 0
    	puts "five *"
    elsif number % 3 == 0
    	puts "three *"
    end
end

def compute_2 (number)
    if number % 3 == 0 && number % 5 != 0 && number % 15 != 0
    	puts "three *"
    end

    if number % 3 != 0 && number % 5 == 0 && number % 15 != 0
    	puts "five *"
    end

    if number % 3 == 0 && number % 5 == 0 && number % 15 == 0
    	puts "fifteen *"
    end
end

def compute_3 (number)
    if number % 3 == 0
      if number % 5 ==0
            puts "fifteen *"
    	else
            puts "three *"
      end
    elsif number % 5 == 0
    	puts "five *"
    end
end

print "please input a number: "
number = gets.chomp.to_i
compute_3 (number)
