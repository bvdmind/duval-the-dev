Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/about'
  get 'pages/skillset'
  get 'pages/contact'
  post 'pages/contact', to: 'pages#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
