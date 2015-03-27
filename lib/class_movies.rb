class Movies 
	def search(word)
		searched_movies = Imdb::Search.new(word).movies
        random_movies = searched_movies.shuffle.first(15)
        movies = random_movies.map{|m|
           {title: m.title, poster: m.poster}
        }.delete_if{|m| m[:poster] == nil}
        movies.first(9)
	end
end