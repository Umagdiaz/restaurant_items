Rails.application.routes.draw do
  devise_for :admins , controllers: {
    registrations: 'admin/registration'
  }

  get 'list/index'
  get 'categories/:name/show_items', to: 'categories#show_items', as: 'show_items_category'

  

  authenticated :admin do
    root to: 'items#index', as: :authenticated_root
    resources :items
    resources :categories
  end

  unauthenticated do
    root to: 'home#index'
  end

  get '*path', to: 'errors#routing_error'

end
