Rails.application.routes.draw do
  get 'felipe/lobo'
  get 'welcome/index'
  resources :coins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
