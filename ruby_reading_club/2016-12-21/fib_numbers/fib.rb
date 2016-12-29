

def fib_recursion (x)

	return 1 if x == 1 || x == 2

	return fib_recursion(x-1) + fib_recursion(x-2) if x > 2

end


def fib_loop (x)
	a = 1
	b = 1
	temp = 0
	for i in 1..x	
		a = b
		b = temp
		temp = a+b
	end
	return 1 if x == 1
	return temp
end


print "Please enter a number: "
x = gets.chomp.to_i
puts "number #{x} of fib is #{fib_recursion(x)}"
puts "number #{x} of fib is #{fib_loop(x)}"