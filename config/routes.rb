Rails.application.routes.draw do

  resources :posts
  resources :meows

  root 'welcome#index'
end
