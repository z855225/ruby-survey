class GameMaker

	def table_size (table_for_maker)		
		while true
			print "\nPlease enter a number of table size ( >= 3):"
			$table_size = gets.chomp.to_i
			
			#清除畫面
			system "clear"
			
			break if $table_size >= 3
		end	
	end

	def init_game_table (table_for_maker)
		#初始化 table，無地雷
		puts "\n"
		#0跟table_size+1是邊框的部分
		for i in 0..$table_size + 1
			# hash 裡面的 hash
			table_for_maker[i] = {}
			for j in 0..$table_size + 1
				table_for_maker[i][j] = 0
			end
		end
	end

	def embed_mine (table_for_maker)

		while true
			#印出初始化的 table
			print_table(table_for_maker)
			
			puts "Please select a number for action"
			puts "1: set mine location - manual mode"
			puts "2: set mine location - auto mode"
			puts "3: clean table"
			puts "4: ready to play"
			print "Select:"
			selection = gets.chomp.to_i
			system "clear"

			case selection
			when selection = 1

				while true
					#印出設好地雷的 table
					print_table(table_for_maker)
					
					puts "Please set mine location (the upper left corner is X = 1, Y = 1)"
							
					puts "Please enter X"
					x = gets.chomp.to_i

					puts "Please enter Y"
					y = gets.chomp.to_i

					system "clear"
					
					break if x >= 1 and x <= $table_size and y >= 1 and y <= $table_size
				end

				table_for_maker[x][y] = "B"
			
			when selection = 2
				init_game_table(table_for_maker)

				for bomb_count in 1..Random.new.rand(1..$table_size)

					x = Random.new.rand(1..$table_size)

					y = Random.new.rand(1..$table_size)

					table_for_maker[x][y] = "B"
				end

			when selection = 3
				init_game_table(table_for_maker)
			when selection = 4
				system "clear"
				break
			end
			
		end
	end

	def set_prompt_numbers (table_for_maker)
		for i in 1..$table_size
			for j in 1..$table_size
				if table_for_maker[i][j] != "B"
					#上有地雷
					table_for_maker[i][j] += 1 if table_for_maker[i-1][j] == "B"
					#右上有地雷
					table_for_maker[i][j] += 1 if table_for_maker[i-1][j+1] == "B"
					#右有地雷
					table_for_maker[i][j] += 1 if table_for_maker[i][j+1] == "B"
					#右下有地雷
					table_for_maker[i][j] += 1 if table_for_maker[i+1][j+1] == "B"
					#下有地雷
					table_for_maker[i][j] += 1 if table_for_maker[i+1][j] == "B"
					#左下有地雷
					table_for_maker[i][j] += 1 if table_for_maker[i+1][j-1] == "B"
					#左有地雷
					table_for_maker[i][j] += 1 if table_for_maker[i][j-1] == "B"
					#左上有地雷
					table_for_maker[i][j] += 1 if table_for_maker[i-1][j-1] == "B"
				end
			end
		end
	end

	def print_table (table_for_maker)
		print "\n"
		for i in 1..$table_size
			for j in 1..$table_size
				print " "
				
				#如果是地雷用紅色表示
				if table_for_maker[i][j] == "B"
					print "\e[31m#{table_for_maker[i][j]}\e[0m"
				else
					print table_for_maker[i][j]
				end

			end
			print "\n\n"
		end
		print "\n"
	end

end
