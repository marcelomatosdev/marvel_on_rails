# frozen_string_literal: true

Rails.application.routes.draw do
  get '/heroes', to: 'heroes#index'
  get '/heroes/:id', to: 'heroes#show', id: /\d+/, as: 'house'

  root to: 'heroes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
