Rails.application.routes.draw do
  root 'currencies#index'
  post 'search', to: 'currencies#search'
  post 'calculate', to: 'currencies#calculate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
