Rails.application.routes.draw do
  resources :books do 
    resources :reviews
  end
  devise_for :users
  root to: 'books#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy' 
  end
end
