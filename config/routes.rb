# frozen_string_literal: true

Rails.application.routes.draw do
  root 'flats#index'
  resources :flats, only: %i[index show edit destroy update create new]
end
