Rails.application.routes.draw do

  root 'products#main', as: 'main_page'

  get 'products', to: 'products#index', as: 'index_page'
  get 'products/:id', to: 'products#show', as: 'product'

  get 'categories/:id', to: 'categories#show', as: 'category_page'

  get 'about', to: 'abouts#show', as: 'about_page'

  get 'contact', to: 'contact#new', as: 'contact_page'

  post 'contacts', to: 'contact#create'

  get 'thankyou', to: 'contact#thankyou', as: 'thankyou_page'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
