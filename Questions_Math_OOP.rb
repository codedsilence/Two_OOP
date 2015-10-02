class Question
	
	def initialize 
		@num1 = 1 + rand(20)
		@num2 = 1 + rand(20)
	end 
	
	def to_string
		return "What is #{@num1} + #{@num2}?"
	end 

	def check_answer(answer) 
		 answer == (@num1 + @num2) 
	end 
end 