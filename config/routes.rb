Rails.application.routes.draw do

  resources :posts
  resources :comments
  devise_for :users
  resources :users

  authenticated :user do
    root to: 'home#index', as: 'home'
  end
  unauthenticated :user do
    root 'home#front'
  end

end
