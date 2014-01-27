class DiceController < ApplicationController

def index

	render 'index'
 end

def initialize 
	@roll1 = 1 + rand(6)
	@roll2 = 1+ rand(6)
	@rolled = @roll1 + @roll2 
end 

def state
	@play = 0
	if @play == 0
		return starting_roll
 	end 
 end



def starting_roll
	@play = 1

	roll_1 = @roll1
	roll_2 = @roll2
		
	@roll = @rolled
	case @roll
	when 7 ,11
		render 'win' 
		return

	when 2 ,3, 12
		render 'lose' 
		return

	else
		puts "Your goal is now  " + @roll.to_s
		puts "Now try to get " + " " + @roll.to_s + " " + "again before you a 7."
		@points_score = @roll

	end 
     
	 render "roll"
 
 end

	def repeating_roll
		@play+=1
	roll_1 = @roll1
	roll_2 = @roll2
	@roll = @rolled

	case @roll
		when @points_score
			 render 'win'
			 return
		when 7 
		  render 'lose'
		   return
		else
          repeating_roll
	end
  render 'roll'
	
 end

	def win_game
		render "win"		
	end

	def lose_game
		render "lose"
    end 
		
end


