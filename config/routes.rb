Rails.application.routes.draw do

  root 'welcome#index'

  resources :flowers
end
