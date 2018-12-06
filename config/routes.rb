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

get 'carts/:id' => "carts#show", as: "cart"
delete 'carts/:id' => "carts#destroy"

post 'cart_items/:id/add' => "cart_items#add_quantity", as: "cart_item_add"
post 'cart_items/:id/reduce' => "cart_items#reduce_quantity", as: "cartt_item_reduce"
post 'cart_items' => "cart_items#create"
get 'cart_items/:id' => "cart_items#show", as: "cart_item"
delete 'cart_items/:id' => "cart_items#destroy"

# Link from the Product index page (erb tags)
#button_to "Add to cart", cart_items_path(:product_id => product.id)

# Link from the Cart show (erb tags)
#link_to "Add (+1)", cart_item_add_path(:id => cart_item), method: :post
#link_to "Reduce (-1)", cart_item_reduce_path(:id => cart_item), method: :post
#link_to "Remove item", cart_item_path(cart_item), method: :delete

resources :products
resources :orders
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
