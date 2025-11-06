# frozen_string_literal: true

Rails.application.routes.draw do
  constraints(lambda { |req| req.format == :json }) do
    resources :tasks, only: %i[index show create update destroy], param: :slug
    resources :users, only: :index
  end

  root "home#index"
  get "*path", to: "home#index", via: :all
end
