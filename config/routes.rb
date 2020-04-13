Rails.application.routes.draw do
  devise_for :users
  get 'teams/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'pages#home'
  resources :teams, only:[:index]
end
