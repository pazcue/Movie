require 'imdb'
require 'sinatra'
require 'pry'
require_relative 'lib/class_movies.rb'

get '/' do 
	erb :index
end

post '/movies/search' do 
	@movies = Movies.new.search(params[:search_term])
	erb :movies_search
end