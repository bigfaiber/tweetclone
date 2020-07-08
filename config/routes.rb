Rails.application.routes.draw do
  resources :follows, only: [:new, :create]
  root 'tweets#index'
  get '/:username', to: 'tweets#user', param: :username, as: 'user_own_tweets'
  scope '/:username' do
    get 'follows/followers'
    get 'follows/following'
  end
  devise_for :users
  resource :tweets, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
