Rails.application.routes.draw do
  put '/line_items/:id', to: 'line_items#decrement_line_item', as: 'decrement'
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
