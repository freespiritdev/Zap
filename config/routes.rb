Rails.application.routes.draw do
  
  resource :products
  resource :women

  devise_for :users
  root to: 'welcome#index'
end
