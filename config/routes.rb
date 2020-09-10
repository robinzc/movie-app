Rails.application.routes.draw do
  namespace :api do
    get "/single_actor" => "actors#display_single_actor"
    get "/single_movie/:id" => "movies#display_single_movie"
    get "all_movies" => "movies#display_all_movies"
  end

end
