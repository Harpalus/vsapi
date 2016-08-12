Rails.application.routes.draw do
  #resources :item_statuses
  #resources :categories
  #resources :items
  #resources :sellers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/soldItems/:seller_id' => 'items#soldItems'
  get '/categoryItems/:category_id' => 'items#categoryItems'
  get '/items' => 'items#index'
  get '/items/:id' => 'items#show'
  root 'items#index'
  
end
