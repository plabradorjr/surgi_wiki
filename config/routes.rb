Rails.application.routes.draw do
  resources :memos, except: [:new]
  resources :services
  resources :inventories, except: [:new]
  resources :users, only: [:index] do
    resources :inventories, only: [:index, :new]
    resources :memos, only: [:index, :new]
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get '/home', to: 'welcome#home'

  get '/search', to: 'welcome#search', as: 'search'

end
