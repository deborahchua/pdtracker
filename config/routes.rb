Rails.application.routes.draw do
  get 'welcome/index'

  resources :objectives

  root 'welcome#index'

end
