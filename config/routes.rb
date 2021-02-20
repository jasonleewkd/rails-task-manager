Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # to launch rails server type rails s
  get "/index", to: "tasks#index"

  get "tasks/new", to: "tasks#new"

  post "tasks", to: "tasks#create"

  get "tasks/:id/edit", to: "tasks#edit"

  patch "tasks/:id/edit", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy"

  get "tasks/:id", to: "tasks#show", as: :task
end
