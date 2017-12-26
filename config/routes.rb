Rails.application.routes.draw do
  resources :readings

  root :to => "readings#index"
end
