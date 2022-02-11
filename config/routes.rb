Rails.application.routes.draw do

  get 'admin/index'
  get 'admin', to: 'admin#index'

  resources :categories
  resources :follows
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :posts do
  resources :comments
  resources :favorites
end
  get 'about/index'
  get 'promo/index'
  get 'posts/index'

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show'
  delete 'users/:id', to: 'users#destroy'

  resources :users
  post 'users/:id/follow', to: "users#follow", as: "follow_user"
	post 'users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"

  get 'users/:id/following', :to => "users#following", :as => :following

  resources :users, only: [:show, :edit, :update]

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'

  get 'comments', to: 'comments#index'
  get 'comments/:id', to: 'comments#show'

  get 'posts/:id', to: 'posts#show'
  root 'posts#index'

end
