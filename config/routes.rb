Rails.application.routes.draw do
  devise_for :accounts
  get 'welcome/index'
  root 'welcome#index'
  resources :projects
  resources :experieces
  resources :blogposts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
