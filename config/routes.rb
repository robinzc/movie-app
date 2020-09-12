Rails.application.routes.draw do
  namespace :api do
    get "/actors" => "actors#index"
    get "/actors" => "actors#query"
    get "/actors/:id" => "actors#show"
    post "/actors" => "actors#show"
    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    post "/movies" => "movies#show"
  end

end
