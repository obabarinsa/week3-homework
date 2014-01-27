class GameController < ApplicationController

def repeat_roll
	roll_1 = @roll1
	roll_2 = @roll2
	roll = @rolled

	case roll
		when @points_score
			puts "You Win"
			game_over
		when 7 
			puts "You Lose"
			game_over
		else
          repeat_roll
	end
  #render 'rolling'
	
end


def game_over


	render 'game_over'

	end




end 