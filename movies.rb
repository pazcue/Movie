require 'pry'

class FizzBuzz
	attr_reader :array

	def loop(num)
		@array = (1..num).to_a
		@array 
	end

	def check(index)

		
			@temp = ""
			if @array[index -1] % 3 == 0 
				@temp += 'Fizz'
			end
			if @array[index -1] % 5 == 0 
				@temp += 'Buzz'
			end
			if @array[index -1] % 7 == 0 
				@temp += 'Boom!!'
			end
			if @array[index -1] % 11 == 0 
				@temp += 'Bang!!'
			end
			@array[index -1] = @temp if @temp != ""
	return @array[index -1] 
	end
end

