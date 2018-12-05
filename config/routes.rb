Rails.application.routes.draw do
  #devise_for :customers
  get 'search/index'
  get 'search/search'
  get 'search/search'
  get 'category/cat'
  get 'contact/index'
  get 'abouts/index'
  get 'order/index'
  get 'order/show'
  get 'order/new'
  get 'carts/show'
  # get 'products/index'
  # get 'products/new'
  # get 'products/edit'

  devise_for :customers , :controllers => {registrations: "registrations"}

  resources :products ,only:[:index,:new]

  root to: 'products#index'

  resources :category do
    collection do 
      get 'results'
    end
  end

  resources :search ,only:[:index] do 
    collection do
      get 'search'
    end
  end


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
