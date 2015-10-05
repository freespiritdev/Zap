Rails.application.routes.draw do
  
  devise_for :users
  resource :products
  resource :women
  resource :carts

  root to: 'welcome#index'
  
end
