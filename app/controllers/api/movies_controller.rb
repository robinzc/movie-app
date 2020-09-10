class Api::MoviesController < ApplicationController
  def display_single_movie
    movie_id = params[:id]
    @single_movie = Movie.find_by(id: movie_id)
    render "display_single_movie.json.jb"
  end

  def display_all_movies
    @all_movies = Movie.all
    render "display_all_movies.json.jb"
  end
end
