Rails.application.routes.draw do
  resources :mining_types
  get 'welcome/index'
  get '/inicio', to: 'welcome#index'
  resources :coins # Mapeia 7 rotas padrão
  # get '/coins', to 'conis#index'
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
