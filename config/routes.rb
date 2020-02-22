# frozen_string_literal: true

Rails.application.routes.draw do
  get 'votes/create'
  resources :stories do
    resources :votes
  end
  resource :session
end
