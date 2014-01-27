class HomeController < ApplicationController

def welcome

	render 'welcome'
 end

def initialize 
	@roll1 = 1 + rand(6)
	@roll2 = 1+ rand(6)
	@rolled = @roll1 + @roll2 
end 

def start_roll

	roll_1 = @roll1
	roll_2 = @roll2
		
	roll = @rolled
	case roll
	when 7 ,11
		puts "You Win!"
		render 'game_over'
		#redirect_to game_game_over_url
	when 2 ,3, 12
		puts "You Lose"
		render 'game_over'
		#redirect_to game_game_over_url
	else
		puts "Your goal is now  " + roll.to_s
		puts "Now try to get " + " " + roll.to_s + " " + "again before you a 7."
		@points_score = roll

		#redirect_to game_repeat_roll_url 
	end 

	 render "first_roll"
end 

def game_over
	redirect_to game_game_over_url

end
end 