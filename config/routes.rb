Rails.application.routes.draw do
  devise_for :users
  get 'teams/index'

  devise_scope :user do
    authenticated :user do
      root 'teams#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :teams, only:[:index]
end
