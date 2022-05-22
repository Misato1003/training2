Rails.application.routes.draw do
  devise_for :users
  get 'home/page'
  resources :cooks do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cooks
  resources :posts
  root to: 'home#page'
end
