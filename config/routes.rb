Rails.application.routes.draw do
  resources :follows, only: [:new, :create]
  get 'follows/followers'
  get 'follows/following'
  root 'tweets#index'
  get '/:username', to: 'tweets#user', param: :username, as: 'user_own_tweets'
  devise_for :users
  resource :tweets do
    collection do
      get 'user'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
