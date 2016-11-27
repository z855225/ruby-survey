def compute_1
	heavenly_stems = {
		8 => "甲",
		9 => "乙",
		0 => "丙",
		1 => "丁",
		2 => "戊",
		3 => "己",
		4 => "庚",
		5 => "辛",
		6 => "壬",
		7 => "癸" }

	earthly_branches = {
		4 => "子",
		5 => "丑",
		6 => "寅",
		7 => "卯",
		8 => "辰",
		9 => "巳",
		10 => "午",
		11 => "未",
		0 => "申",
		1 => "酉",
		2 => "戌",
		3 => "亥"
	}

	h = 0
	e = 0

	for i in 2016..2076
		puts "#{i} - #{heavenly_stems[h%10]}#{earthly_branches[e%12]}年"
		h += 1
		e += 1
	end

end

def compute_2 (ce)
	heavenly_stems = {
		4 => "甲",
		5 => "乙",
		6 => "丙",
		7 => "丁",
		8 => "戊",
		9 => "己",
		0 => "庚",
		1 => "辛",
		2 => "壬",
		3 => "癸" }

	earthly_branches = {
		4 => "子",
		5 => "丑",
		6 => "寅",
		7 => "卯",
		8 => "辰",
		9 => "巳",
		10 => "午",
		11 => "未",
		0 => "申",
		1 => "酉",
		2 => "戌",
		3 => "亥"
	}

	puts "#{ce} = #{heavenly_stems[ce%10]}#{earthly_branches[ce%12]}年"
end

compute_1

while true
	print "Please enter a Common Era: "
	ce = gets.chomp
	compute_2(ce.to_i)
end
