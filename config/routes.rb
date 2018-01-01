Rails.application.routes.draw do
  resources :devices
  resources :readings

  root :to => "devices#index"

  mount ActionCable.server => '/cable'
end
