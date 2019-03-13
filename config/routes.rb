Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'articles/index'
  get 'articles/show'
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, class_name: "Investor::User"
  namespace :kcfarmer do
    get 'blogs/new'
    get 'blogs/create'
    get 'blogs/edit'
    get 'blogs/update'
    get 'blogs/index'
    get 'blogs/show'
    get 'blogs/destroy'
  end
  namespace :kcfarmer do
    get 'dashboard/index'
    
  end

  namespace :kcfarmer do
    resources :blogs

    root 'dashboard#index'
  end
  
  devise_for :members, class_name: "Kcfarmer::Member"
  
  namespace :investor do
    get 'dashboard/index'
  end

  namespace :investor do 

    root 'dashboard#index'
  end

  get 'contact' => 'contact#new', :as => 'contact'
  get 'contact/create'
  get 'about' => 'about#index', :as => 'about'
  get 'home/index'

  resources :articles
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
