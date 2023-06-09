Rails.application.routes.draw do
  
  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }

  authenticate :admin do
    
    resources :items
    resources :categories
    
  end

  get 'list/index'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
