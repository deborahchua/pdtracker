Rails.application.routes.draw do
  resources :users
  resources :objectives

  root 'objectives#index'

end
