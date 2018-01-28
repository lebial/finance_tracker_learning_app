Rails.application.routes.draw do
  devise_for :users
  resources :addresses, only: %i[new index create]
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
