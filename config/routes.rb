Rails.application.routes.draw do

  root to: 'pages#home'

  resources :portfolios

  get 'about-me' => 'pages#about'
  get 'contact' => 'pages#contact'

  resources :blogs

end
