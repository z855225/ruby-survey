class GamePlayer

  	def init_game_table (table_for_player)
		#初始化未踩地雷 talbe
		for i in 0..$table_size + 1
			# hash 裡面的 hash
			table_for_player[i] = {}
			for j in 0..$table_size + 1
				table_for_player[i][j] = "."
			end
		end		
	end

  	def start_palying (table_for_player, table_for_maker)
    	#踩地雷
		while true

			while true
				#印出未踩地雷的 talbe
	    		print_table (table_for_player)

				puts "\nPlease select a location \n\n"

				puts "Please enter row"
				row = gets.chomp.to_i

				puts "Please enter column"
				column = gets.chomp.to_i

		    	system "clear"

		    	break if row >= 1 and row <= $table_size and column >= 1 and column <= $table_size
		    end
	    	
	    	table_for_player[row][column] = table_for_maker[row][column]

	      	if table_for_player[row][column] == "B"
	      		print_table (table_for_player)
	        	puts "\nBOOOOOOM !!!"
	        	puts "Game Over\n\n"
	        	break
	      	end

	      	if table_for_player[row][column] == 0
	      		auto_sweepe_safe_zone(table_for_player,table_for_maker) 		
	      	end

	      	if game_clear_or_not(table_for_player, table_for_maker)
	      		print_table (table_for_player)
	      		puts "Game Clear!\n\n"
	      		break
	      	end

    	end
  	end

	def auto_sweepe_safe_zone (table_for_player, table_for_maker)
		for i in 1..$table_size
			for j in 1..$table_size
				if table_for_player[i][j] == 0
					#上
					table_for_player[i-1][j] = table_for_maker[i-1][j]
					#右上
					table_for_player[i-1][j+1] = table_for_maker[i-1][j+1]
					#右
					table_for_player[i][j+1] = table_for_maker[i][j+1]
					#右下
					table_for_player[i+1][j+1] = table_for_maker[i+1][j+1]
					#下
					table_for_player[i+1][j] = table_for_maker[i+1][j]
					#左下
					table_for_player[i+1][j-1] = table_for_maker[i+1][j-1]
					#左
					table_for_player[i][j-1] = table_for_maker[i][j-1]
					#左上
					table_for_player[i-1][j-1] = table_for_maker[i-1][j-1]
				end
			end
		end
	end

  	def game_clear_or_not (table_for_player, table_for_maker)
  		
  		result = true

  		for i in 1..$table_size
			for j in 1..$table_size
				if table_for_maker[i][j] == "B"
					next
				end

				if table_for_maker[i][j] != table_for_player[i][j]
					result = false
				end
			end
		end

		return result

	end

  	def print_table (table_for_player)
		print "\n"
		for i in 1..$table_size
			for j in 1..$table_size
				print " "
				
				#如果是地雷用紅色表示
				if table_for_player[i][j] == "B"
					print "\e[31m#{table_for_player[i][j]}\e[0m"
				else
					print table_for_player[i][j]
				end
			end
			print "\n\n"
		end
		print "\n"
	end

end
