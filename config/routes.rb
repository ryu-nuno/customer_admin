Rails.application.routes.draw do
  devise_for :users
  devise_for :admins

  namespace :public do
    root to: 'homes#top'
    resources :customers, only: [:new, :create, :index, :show, :destroy, :edit , :update], to: 'public/customers#'
    resources :histories, only: [:new, :create, :edit, :update, :destroy], to: 'public/histories#'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end