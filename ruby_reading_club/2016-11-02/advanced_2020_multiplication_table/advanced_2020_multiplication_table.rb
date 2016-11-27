require 'Prime'

for x in 2..20
	for y in 1..20
		puts "#{x} * #{y} = #{x * y}" unless y.prime?
	end
end
