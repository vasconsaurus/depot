Rails.application.routes.draw do
  put '/line_items/:id', to: 'line_items#decrement_line_item', as: 'decrement'
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
