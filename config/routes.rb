Rails.application.routes.draw do

  devise_for :users
  resources :posts do
  resources :comments
end
  get 'about/index'
  get 'promo/index'
  get 'posts/index'

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'

  root 'promo#index'

end
