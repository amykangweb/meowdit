Rails.application.routes.draw do

  resources :meows

  root 'welcome#index'
end
