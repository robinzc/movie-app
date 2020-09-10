class Api::ActorsController < ApplicationController
  def display_single_actor
    @single_actor = Actor.find_by(id:1)
    render "display_single_actor.json.jb"
  end
end
