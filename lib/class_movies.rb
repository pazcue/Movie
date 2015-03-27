class Movies 

	attr_reader :array
	def search
		i = Imdb::Search.new("Funny")

		puts i.movies.size

		#.title 
		#=> 97
		return i.movies
	end
	 
end