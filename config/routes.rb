Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'static_pages#landing'

  get '/home', to: 'static_pages#home'

  resources :items, only: [:index, :show] do
    resources :item_likes, only: [:create, :destroy]
    resources :orders, only: [:create, :destroy]
  end

  resources :profiles, only: [:show] do
    member do
      patch 'follow'
      patch 'unfollow'
    end
  end

  resource :dashboard, only: [:show, :edit, :update]
  resource :settings, only: [:show, :edit, :update]

  resources :searches, only: [:index]
  namespace :searches do
    get '/subcategories_collection' => 'searches#subcategories_collection', as: :subcategories_collection
    get '/sizes_collection' => 'searches#sizes_collection', as: :sizes_collection
  end

  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
