require 'date'
require_relative './tell_the_star_sign'

puts "Please input your birthday"
puts "year: "
year = gets.chomp
puts "month: "
month = gets.chomp
puts "day: "
day = gets.chomp
puts "Your birthday is #{year}-#{month}-#{day}"

if Date.valid_date?(year.to_i, month.to_i, day.to_i)
    birthday = Date.new(year.to_i, month.to_i, day.to_i).strftime("%m-%d")
    tell_me = StarSign.new
    tell_me.what_is_my_current_star_sign(year.to_i, birthday)
    tell_me.what_is_my_new_star_sign(year.to_i, birthday)
else
    puts "Wait ! Someting wrong ! Your birthday seems weird..."
end
