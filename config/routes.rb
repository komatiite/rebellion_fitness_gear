Rails.application.routes.draw do



  get 'products', to: 'products#index', as: 'products'
  get 'products/:id', to: 'products#view', as: 'product'

  get 'products/index'

  get 'products/view'

  get 'products/add'

  get 'products/discard'

  get 'products/buy'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
