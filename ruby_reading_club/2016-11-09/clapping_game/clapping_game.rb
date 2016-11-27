def clap (number)
    if number % 3 == 0 or number % 7 == 0
        puts "#{number} - 拍手"
    elsif number.to_s.include? "3" or number.to_s.include? "7"
        puts "#{number} - 拍手"
    else
        puts number
    end
end

for number in 1..100
    clap (number)
end
