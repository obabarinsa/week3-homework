class DiceController < ApplicationController

	def show_die
		die = params[:die_roll]
		images = array [ image_tag('https://uchicago.s3.amazonaws.com/d01.png'),
				  	image_tag('https://uchicago.s3.amazonaws.com/d02.png'),
					image_tag('https://uchicago.s3.amazonaws.com/d03.png'),
					image_tag('https://uchicago.s3.amazonaws.com/d04.png'),
					image_tag('https://uchicago.s3.amazonaws.com/d05.png'),
					image_tag('https://uchicago.s3.amazonaws.com/d06.png')]
		return images[die-1]
	end

	def die_roll
		die = 1+rand(6)
		return die

	end

	# def roll_dice
	# 	if roll_counter == 0
	# 		starting_roll
	# 	else
	# 		repeating_roll

	def starting_roll
		roll1 = die_roll
		roll2 = die_roll
		@die_image1 = show_die(roll1)
		@die_image2 = show_die(roll2)
		roll = roll1 + roll2
		case roll
		when 7 ,11
			win_game
		when 2 ,3, 12
			lose_game
		else
			puts "Your goal is now  " + roll.to_s
			puts "Now try to get " + " " + roll.to_s + " " + "again before you a 7."
			@points_score = roll
			repeating_roll
		end 
			render  "roll"
	end

	def repeating_roll
		roll1 = die_roll
		roll2 = die_roll
		@die_image1 = show_die(roll1)
		@die_image2 = show_die(roll2)
		roll = roll1 + roll2
		case roll
		when @points_score
			win_game
		when 7 
			lose_game
		else
			repeating_roll
		end
		render "repeat"

	end

	def win_game
		puts "You Win!"
		render "win"		
	end

	def lose_game
		puts "You Lose"
		render "lose"
    end 

		#@rolls = display.shuffle(dice) #also can do num_cads.to_i
		
end
