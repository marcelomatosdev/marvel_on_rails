# frozen_string_literal: true

Rails.application.routes.draw do
  get '/heroes', to: 'heroes#index'
  get '/heroes/:id', to: 'heroes#show', id: /\d+/, as: 'hero'

  get '/comics', to: 'comics#index'
  get '/comics/:id', to: 'comics#show', id: /\d+/, as: 'comic'

  get '/searchcharacter', to: 'heroes#search', as: 'searchcharacter'
  get '/searchcomic', to: 'comics#search', as: 'searchcomic'


  root to: 'heroes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
