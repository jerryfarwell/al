Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  
  
  devise_for :users
  resources :events
  resources :welcome
  root "events#index"
  resources :users do
  resources :avatars, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
