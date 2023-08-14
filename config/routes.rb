Rails.application.routes.draw do
  get 'new_welcome/index'
  get 'welcome/index'
  resources :usuarios
  resources :enderecousuarios
  resources :registro_doacos

  root to: "welcome#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
