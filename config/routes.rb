# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :categories
      resources :challenges
      resources :users, only: [:update]
    end
  end

  get '*path', to: 'welcome#index', constraints: ->(req) { req.path !~ /\.(png|jpg|js|css|json)$/ }
end
