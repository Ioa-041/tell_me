Rails.application.routes.draw do
  root "careers#index"
  resources :careers, only: :index
end
