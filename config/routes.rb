# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'welcome#homepage'
  get 'my_portfolio', to: 'users#my_portfolio'
end
