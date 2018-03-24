Rails.application.routes.draw do

  root 'products#index'

  get 'products', to: 'products#index', as: 'main_page'
  get 'products/:id', to: 'products#show', as: 'product'

  get 'products/index'

  get 'products/add'

  get 'products/discard'

  get 'products/buy'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
