Rails.application.routes.draw do
  resources :reading_lists
  resources :books do 
    resources :reviews
  end
  devise_for :users
  root to: 'books#index'
  get 'extra', to: 'reading_lists#extra'
  get "books_for_genre", to: "books#extra"

  get '/search', to: "books#search"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy' 
  end
end
