# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks, only: %i[index show create update destroy], param: :slug
  resources :users, only: :index

  root "home#index"
  get "*path", to: "home#index", via: :all
end
