Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:index, :show]
  root 'site#index' #only for the home page. nothing else
  get '/about' => 'site#about'

  namespace :admin do
    get '/' => 'base#index'
    resources :products
  end


end
