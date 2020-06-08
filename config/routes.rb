# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  namespace :api, defaults: { formats: :json } do
    namespace :v1 do
      resources :categories
      resources :challenges
      resources :challenge_users
    end
  end

  get '*path', to: 'home#index', constraints: ->(req) { req.path !~ /\.(png|jpg|js|css|json)$/ }
end
