require_relative 'Player'
class MainMenu
	attr_accessor:players
  attr_accessor:cmd
	def initialize
		@players = Array.new
    @cmd = "battle"
  end
	def main_menu
    welcome
		while cmd != "exit"
			current_player
			input=gets.chomp
			if input=="new"
			add_player
      elsif input=="start"
        start
      end
      cmd = input
		end
		
	end

	def current_player
    puts "#==============================#"
		puts "#Welcome to Battle Arena#"
		puts "#-----------------------------------------------------#"
		puts "# Description :"
		puts "# 1. ketik \"new\" untuk membuat karakter #"
		puts "# 2. ketik \"start\" untuk memulai pertarungan #"
		puts "#-----------------------------------------------------#"
		total_player = players.size
		puts "# Current Player :#{total_player} #"
    if total_player == 0
		puts "#		-		#"
    elsif total_player>0
      for i in 0..total_player-1 do
        puts "# #{players[i].name} #"
      end
    end
		puts "# * max player 2 atau 3#"
		puts "#-----------------------------------------------------#"
	end
	def add_player
		puts "# Masukan Nama Player :  #"
    cur_player=players.size
		input_nama=gets.chomp
			p1=Player.new
      p1.name = input_nama
			players[cur_player] = p1
	end
	def welcome
		puts "#==============================#"
		puts "#Welcome to Battle Arena#"
		puts "#-----------------------------------------------------#"
		puts "# Description :"
		puts "# 1. ketik \"new\" untuk membuat karakter #"
		puts "# 2. ketik \"start\" untuk memulai pertarungan #"
		puts "#-----------------------------------------------------#"
	end
  
  def start
    puts "#==============================#"
    puts "# Welcome to Battle Arena #"
    puts "#-----------------------------------------------------#"
    j = 0
    k = 0
    while j == 0 do
    puts "Battle Start :"
    puts "siapa yang akan menyerang : "
    input_nama1 = gets.chomp
    puts "siapa yang di serang: "
    input_nama2 = gets.chomp
    puts "Description :"
    i = 0
    while i <=players.size-1 do
      if input_nama1 == players[i].name
        
        puts "#{players[i].name} : manna = <#{players[i].manna = players[i].manna-20}>, blood = <#{players[i].blood}>"
        if players[i].manna == 0
          j=1
          k=i
        end
      end
      if input_nama2 == players[i].name
        
         puts "#{players[i].name} : manna = <#{players[i].manna}>, blood = <#{players[i].blood = players[i].blood-20}>"
      end
      i= i+1
    end
    end
    puts "#-------GAME OVER--------#{players[k].name} Kalah#"
    @cmd = "exit"
  end
end

Menu=MainMenu.new
Menu.main_menu