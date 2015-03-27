require 'imdb'
require 'sinatra'
require_relative 'lib/class_movies.rb'

get '/' do 
	movie = Movies.new
	movies = movie.search.take(10)	
	@i = movies
	erb :index
end