Rails.application.routes.draw do
  root 'home#index'
  resources :students, only: [:create, :index, :show, :new, :edit, :update]
  resources :courses, only: [:create, :index, :show, :new, :edit, :update]
end
