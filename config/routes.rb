Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'users/:name', to: 'user#show_by_name'
  get 'users', to: 'user#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
