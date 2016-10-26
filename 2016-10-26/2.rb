# 給一個正整數
# 若為3的倍數印出  "three *"
# 若為5的倍數印出  "five *"
# 若為15的倍數印出 "fifteen *"
# 寫成 function 呼叫

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
	
    else
    	puts "five *"
    	
    end
      
end

print "please input a number: "

number = gets.chomp.to_i

compute_3 (number)