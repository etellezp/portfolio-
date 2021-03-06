Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  
  root to: 'pages#home'

  resources :portfolios, except: [:show]
  get 'angular-items' => 'portfolios#angular'
  get 'portfolio/:id' => 'portfolios#show', as: 'portfolio_show'

  get 'about-me' => 'pages#about'
  get 'contact' => 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

end
