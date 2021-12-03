# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  root 'books#index'

  resources :books
end
