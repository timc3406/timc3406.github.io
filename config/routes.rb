Rails.application.routes.draw do
  resources :experiences
  # get 'contactme/index'
  devise_for :accounts
  get 'welcome', to: 'welcome#index', as: 'welcome'
  root 'welcome#index'
  resources :projects
  resources :experieces
  resources :blogposts
  get 'contactme', to: 'contactme#index', as: 'contactme'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
