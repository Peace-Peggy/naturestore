Rails.application.routes.draw do
  get 'contact/index'
  get 'abouts/index'
  get 'order/index'
  get 'order/show'
  get 'order/new'
  get 'carts/show'
  get 'products/index'
  get 'products/new'
  get 'products/edit'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
