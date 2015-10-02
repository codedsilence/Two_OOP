require './Questions_Math_OOP.rb'
require './Math_Players_OOP.rb'
require 'colorize'


# get players name/info
puts "Player 1, what is your name?".colorize(:purple)
@name = gets.chomp.to_s
player1 = Players.new(@name)
puts player1.print_greeting

puts "Player 2, what is your name?".colorize(:yellow)
@name2 = gets.chomp.to_s
player2 = Players.new(@name2)
puts player2.print_greeting


#ask user the question 


def turn(player_number)
	math_problem = Question.new 
	puts math_problem.to_string
	@answer = gets.chomp.to_i

	if math_problem.check_answer(@answer)
		puts "Correct!".colorize(:green)
		puts "You have #{player_number.lives} lives left!"
	else 
		puts "Wrong answer.".colorize(:red)
		player_number.lose_lives
		puts "You have #{player_number.lives} lives left!"
	end 
end 

@counter = 1

#continue game until one player has 0 lives 
def begin_game(player_one, player_two)
	until player_one.lives == 0 || player_two.lives == 0 
		@counter += 1
		if @counter.even?
			puts "#{player_one.player_name}, it's your turn!".colorize(:purple)
			turn(player_one)
		else 
			puts "#{player_two.player_name} it's your turn!".colorize(:yellow)
			turn(player_two)
		end 
	end 
end

puts begin_game(player1, player2)

if player1.lives == 0 
	puts "#{player2.player_name}, you win!"
else 
	puts "#{player1.player_name}, you win!"
end 

player1.lives = 3
player2.lives = 3

puts "Do you want to play again? Yes or no?"
	@response = gets.chomp.downcase.to_s
	if @response == "yes"
		puts "Let's go!"
		puts player1.lives 
		begin_game(player1, player2)
	else 
		puts "Good Bye!"
	end