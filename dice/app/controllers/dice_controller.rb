class DiceController < ApplicationController

@@keep_total = 1
@@points_score =0
@@first_time = true

def keep_total
	@@keep_total
end

helper_method :keep_total


def points_score
	@@points_score
end

helper_method :points_score

def first_time
	@@first_time
end

helper_method :first_time

def index
	render 'index'
 end

def initialize
	if @@keep_total ==1 
		@@first_time = true
		@@keep_total =2	
	end 

end 

def state

	@roll1 = 1 + rand(6)
	@roll2 = 1+ rand(6)
	@rolled = @roll1 + @roll2

	if @@first_time == true
	  @@first_time =false
	  starting_roll
	  else
	 	
	  repeating_roll	
	  	
 	end 
 end



def starting_roll
	@@keep_total +=1
	
	roll_1 = @roll1
	roll_2 = @roll2
		
	@roll = @rolled
	case @roll
	when 7 , 11
		win_game
		return

	when 2 , 3, 12
		lose_game 
		return

	else 
		@@points_score = @roll
		 
	end  
	 render "roll"
 
 end

	def repeating_roll

	case @rolled
		when @@points_score
			win_game
			return
		when 7 
		  lose_game
		   return 
           
	end
  render 'roll'
	
 end

	def win_game
		@@keep_total = 1
		@@points_score =0
		@@first_time = true
		render "win"		
	end

	def lose_game
		@@keep_total = 1
		@@points_score =0
		@@first_time = true
		render "lose"
    end 
		
end


