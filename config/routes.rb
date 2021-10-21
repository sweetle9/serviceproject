Rails.application.routes.draw do
  resources :posts do
  resources :comments
end
  get 'posts/index'
  root 'posts#index'

end
