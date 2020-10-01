Rails.application.routes.draw do
  
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  get "/movies/:id/edit" => "movies#edit"
  patch "/movies/:id" => "movies#update"
  
  namespace :api do
    get "/actors" => "actors#index"
    get "/actors/:id" => "actors#show"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"

    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/movie_genres" => "movie_genres#create"
    delete "/movie_genres/:id" => "movie_genres#destroy"
  end

end
