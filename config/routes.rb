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
    resources :items, only: [:new, :create, :index, :show, :destroy]
    resources :genres
  end
  
  devise_for :customers
  root to: 'homes#top'
  get  "/about"  => "homes#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
