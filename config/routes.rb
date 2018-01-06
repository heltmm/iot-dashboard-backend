Rails.application.routes.draw do
  resources :devices do
    resources :readings
  end


  root :to => "devices#index"

  mount ActionCable.server => '/cable'
end
