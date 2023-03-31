Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/songs" => "songs#index"
  post "/songs" => "songs#create"
  patch "/songs/:id" => "songs#update"
  delete "/songs/:id" => "songs#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
end
