class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all 
    render "index.json.jb"
  end

  def show
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)
    render "show.json.jb"
  end

  def query
    actor_name = params[:first_name]
    @actor = Actor.find_by(first_name: actor_name)
    render "show.json.jb"
  end
  
# I'm having an issue figuring out the query one; when I put in the query it returns all actors. The server log says it's rendering the index.json file and I'm not sure what's going on. Otherwise my URL and POST queries work without issue.
end
