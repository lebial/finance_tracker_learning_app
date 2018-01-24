Rails.application.routes.draw do
  resources :addresses, only: %i[new index create]
  root 'welcome#index'
end
