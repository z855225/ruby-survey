# 印出九九乘法表
# X * Y = XY
# 如果 Y 是質數則跳過

require 'Prime'

for x in 2..20
	for y in 1..20
        puts "#{x} * #{y} = #{x * y}" unless y.prime?
	end
end