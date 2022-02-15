Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read All
  get "tasks", to: "tasks#index"
  # Create
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # Read One
  get "tasks/:id", to: "tasks#show", as: :task
  # update
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"
  # Delete
  delete "tasks/:id", to: "tasks#destroy"
end
