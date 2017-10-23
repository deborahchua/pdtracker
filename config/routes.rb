Rails.application.routes.draw do
  resources :users
  resources :objectives do
    resources :reviews
  end

  root 'objectives#index'

end
