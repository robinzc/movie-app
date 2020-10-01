class MoviesController < ApplicationController

  def index
    @movies = Movie.all 
    render "index.html.erb"
  end

  def show
    @movie = Movie.find(params[:id])
    render "show.html.erb"
  end

  def edit
    @movie = Movie.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(
      title: params[:title],
      year: params[:year],
      director: params[:director],
      plot: params[:plot]
    )
      redirect_to "/movies/#{@movie.id}"
    else 
      render json: {errors: @movie.errors.full_messages}, status: 422
    end
  end

end