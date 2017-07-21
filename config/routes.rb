Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#index"
  get "/signup", to: "users#new", as: :signup
  get "/login", to: "sessions#new", as: :login
  post "/login", to: "sessions#create", as: :user_loggedin
  resources :users, only: [:create, :show]
  get "/users/:id/favejobs/search", to: "favejobs#search"
  post "/users/:id/favejobs/search", to: "favejobs#query", as: :jobs
  get "/users/:id/favejobs/new", to: "favejobs#new", as: :new_job
  post "/users/:id", to: "favejobs#create"
  delete "/logout", to: "sessions#destroy", as: :logout
  resources :to_dos

end
