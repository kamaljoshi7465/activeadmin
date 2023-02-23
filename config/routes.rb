Rails.application.routes.draw do 
  resources :libraries
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :students
  resources :accounts
  resources :courses
  resources :animals
  namespace :api do 
    namespace :v1 do 
      resources :students 
      resources :courses 
      resources :animals
      resources :accounts
    end 
  end
end
