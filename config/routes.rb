Rails.application.routes.draw do
  resources :devices
  resources :readings

  root :to => "readings#index"

  mount ActionCable.server => '/cable'
end
