Rails.application.routes.draw do
  # get 'image/index'

  # get 'image/show'

  # get 'image/new'

  # get 'album/new'

  # get 'album/show'

  get 'blog', to: 'blog#index'
  get 'blog/show', to: 'blog#show'

  resources :service, only: [:index, :show]

  resources :album, only: [:index] do
    resources :image, only: [:index, :show, :new]
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'
end
