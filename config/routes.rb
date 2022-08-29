Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  get 'static_pages/landing_page', to: 'static_pages#landing_page'

  resources :curriculums, only: [] do
    resources :learning_units, only: [:index]
  end

  resources :learning_units, only: [:show]

  root 'static_pages#landing_page'
end
