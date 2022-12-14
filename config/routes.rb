# frozen_string_literal: true

Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'welcome#homepage'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
end
