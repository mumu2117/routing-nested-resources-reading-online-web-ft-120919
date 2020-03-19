Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show] do
    resources :posts do
    resources :comments
    end
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  
  resources :posts do
  resources :comments
  end

  root 'posts#index'

end
