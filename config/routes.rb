Rails.application.routes.draw do


  devise_for :users

  resources :clientes do
    resources :compras
  end
  resources :produtos 
  
  resources :vendas

  resources :relatorios

  root "home#index"  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
