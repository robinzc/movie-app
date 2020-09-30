class Api::MovieGenresController < ApplicationController

  def create
    @movie_genre = MovieGenre.new(
      genre_id: params[:genre_id],
      movie_id: params[:movie_id]
    )

    if @movie_genre.save
      render "show.json.jb"
    else 
      render json: { errors: @movie_genre.errors.full_messages }, status: 422
    end
  end

  def destroy
    movie_genre = MovieGenre.find(params[:id])
    movie_genre.destroy
    render json: {message: "You have destroyed this movie genre. The world will never be the same."}
  end

end
