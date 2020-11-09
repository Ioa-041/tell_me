Rails.application.routes.draw do
  devise_for :users
  root "careers#index"
  resources :careers, only: :index
end
