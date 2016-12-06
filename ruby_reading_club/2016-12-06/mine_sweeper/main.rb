require_relative './maker'
require_relative './player'

table_for_maker = {}
table_for_player = {}

maker = GameMaker.new
maker.table_size(table_for_maker)
maker.init_game_table(table_for_maker)
maker.embed_mine(table_for_maker)
maker.set_prompt_numbers(table_for_maker)

player = GamePlayer.new
player.init_game_table(table_for_player)
player.start_palying(table_for_player, table_for_maker)
