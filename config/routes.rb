Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  get "/chair" => "chair#index"
  get "/chair/new" => "chair#new"
  post "/chair" => "chair#create"
  get "/chair/:id" => "chair#show"
  get "/chair/:id/edit" => "chair#edit"
  patch "/chair/:id" => "chair#update"
end
