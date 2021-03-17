Rails.application.routes.draw do
 
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
  end
  
  devise_for :customers
  root to: 'homes#top'
  get  "/about"  => "homes#about"
  
  resources :items
  get "/items" => "items#index"
  
  resources :cart_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
