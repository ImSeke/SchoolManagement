Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root 'welcome#index'
  resources :teachers, only: [:index, :show]
end
