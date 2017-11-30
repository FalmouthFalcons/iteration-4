Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'

  resources :orders
  # resources :users, :controller => 'users_controller'
  resources :order_products
  resources :users
  resources :sessions
  resources :payment_types
  resources :product_types do  
    get 'categoryshow'
  end
  resources :products do
    get 'categoryshow'
  end

  post 'add_to_cart', to: 'orders#add_to_cart'
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'profile', to: 'users#show', as: 'profile'
  get 'my_products', to: 'products#my_products', as: 'my_products'
  get 'place_order', to: 'orders#place_order', as: 'place_order'
  get 'complete_order', to: 'orders#complete_order', as: 'complete_order'
  delete 'delete_product_from_order', to: 'orders#delete_product_from_order', as: 'delete_product_from_order'
  delete 'cancel_order', to: 'orders#destroy', as: 'destroy'

  put 'place_order', to: 'orders#update', as: 'update'
  
  # get 'orders', to: 'orders#show', as: 'orders' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
