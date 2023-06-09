Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }

  authenticated :admin do
    root to: 'items#index', as: :authenticated_root
    resources :items
    resources :categories
  end

  unauthenticated do
    root to: 'home#index'
  end

  get 'list/index'

end
