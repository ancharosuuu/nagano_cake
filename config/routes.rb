Rails.application.routes.draw do


  resources :items
  get "items/:id" => "items#show"
  
  scope module: :admin do
    devise_for :admin, controllers: {
      sessions: 'admin/sessions',
      passwords: 'admin/passwords',
      registrations: 'admin/registrations'
    }
    end
    
    namespace :admin do
      
    devise_for :admin
    resources :items, only: [:new, :create, :index, :show, :edit, :update, :destroy]
    resources :genres
    post 'admin/genres/:id/edit' => 'admin_genres#edit'
    resources :customers
  end
  
  
  root to: 'homes#top'
  resource :customers, only: [:index, :show, :edit, :update]
  get  "/about" => "homes#about"
  get "/customers/my_page" => "customers#show"
  
  devise_for :customers
  
  get 'customers/unsubscribe/' => 'customers#unsubscribe', as: 'confirm_unsubscribe'
  patch ':customers/withdraw/' => 'customers#withdraw', as: 'withdraw_customer'
  
  
  resources :cart_items do
   delete 'destroy_all'
 end
 
  post '/cart_item' => 'cart_items#index'
  post '/cart_items/:id' => 'cart_items#update'
  
  resources :orders
  resources :order_details
  

  resources :addresses
  
 end

