class Api::MoviesController < ApplicationController
  
  def show
    movie_id = params[:id]
    @movie = Movie.find_by(id: movie_id)
    render "show.json.jb"
  end

  def index
    @movies = Movie.all
    render "index.json.jb"
  end
end
