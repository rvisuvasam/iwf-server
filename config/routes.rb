Rails.application.routes.draw do
  resources :wishes
  root 'dashboard#index'
end
