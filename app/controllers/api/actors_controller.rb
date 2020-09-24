class Api::ActorsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @actors = Actor.all 

    if params[:sort] == "age"
      if params[:sort_order] == "desc" 
        @actors = @actors.order(age: :desc)
      else
        @actors = @actors.order(:age)
      end
    else
      @actors = @actors.order(:id)
    end

    render "index.json.jb"
  end

  def show
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)
    render "show.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for], 
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id]
    )
    if @actor.save
      render "show.json.jb"
    else 
      render json: { errors: @actor.errors.full_messages }, status: 422
    end
  end

  def update
    @actor = Actor.find(params[:id])

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age 
    @actor.movie_id = params[:movie_id] || @actor.movie_id

    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: 422
    end
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "You have destroyed this actor. Gasp."}
  end
  
end
