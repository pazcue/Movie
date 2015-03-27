class Task
	attr_reader :timestamp
	attr_accessor :content
	attr_accessor :completed
	

	def initialize (content)
	@timestamp=Time.now
	@content= content
	@completed =false
end

	def completed?
		return @completed
		
	end
	def complete!
		@completed = true
	end



end