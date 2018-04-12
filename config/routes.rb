Rails.application.routes.draw do

  #resources :charges

  resources :charges, only: [:new, :create]
  devise_for :users



  get 'orders/index'

  get 'customer', to: 'customer#new', as: 'sign_up'
  post 'customers', to: 'customer#create'
  get 'customer/index', to: 'customer#index', as: 'login_page'
  post 'customer/login', to: 'customer#login', as: 'login'
  get 'customer/logout', to: 'customer#destroy', as: 'logout'

  get 'checkout/index', to: 'checkout#index', as: 'checkout_page'
  get 'checkout/invoice', to: 'checkout#invoice', as: 'invoice'

  get 'cart', to: 'cart#show', as: 'cart'
  resources :product_orders, only: [:create, :update, :destroy]

  root 'products#main', as: 'main_page'

  get 'products', to: 'products#index', as: 'index_page'
  get 'products/:id', to: 'products#show', as: 'product'
  get 'search', to: 'search#index', as: 'product_search'

  get 'categories/:id', to: 'categories#show', as: 'category_page'

  get 'orders/new', to: 'orders#new', as: 'new_order'
  post 'orders/create', to: 'orders#create'

  get 'about', to: 'abouts#show', as: 'about_page'
  get 'contact', to: 'contact#new', as: 'contact_page'
  post 'contacts', to: 'contact#create'
  get 'thankyou', to: 'contact#thankyou', as: 'thankyou_page'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
