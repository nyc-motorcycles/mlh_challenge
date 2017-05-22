Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}

  root 'welcome#index'

  resources :hackathons, only: :show

  resources :users, only: :show
end
