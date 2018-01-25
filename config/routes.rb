Rails.application.routes.draw do
  devise_for :users
  resources :addresses, only: %i[new index create]
  root 'welcome#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end
