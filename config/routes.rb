Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "tasks#index"

  get    "tasks",          to: "tasks#index", as: :tasks

  get    "tasks/new",      to: "tasks#new"

  post   "tasks",          to: "tasks#create", as: :create

  get    "tasks/:id/edit", to: "tasks#edit", as: :edit
  get    "tasks/:id",      to: "tasks#show", as: :task

  patch  "tasks/:id",      to: "tasks#update", as: :update

  delete "tasks/:id",      to: "tasks#destroy"
end
