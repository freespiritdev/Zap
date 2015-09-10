Rails.application.routes.draw do
  
  devise_for :users
  resource :products
  resource :women

  root to: 'welcome#index'
  
end
