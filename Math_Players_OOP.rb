class Players
		attr_accessor :lives
		attr_reader :player_name
	
	def initialize (player_name)
		@player_name = player_name
		@lives = 3
	end 

	def print_greeting
		return "Hello, #{@player_name}, let's play!"
	end 

	def lose_lives
		@lives -= 1
	end 
end