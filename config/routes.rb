Rails.application.routes.draw do
  namespace :api do
    get "/single_actor" => "actors#display_single_actor"
  end

end
