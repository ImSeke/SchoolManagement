# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root 'welcome#index'
  resources :teachers
  resources :students
  resources :lessons
end
