Rails.application.routes.draw do

  root to: 'pages#home'

  resources :portfolios, except: [:show]
  get 'portfolio/:id' => 'portfolios#show', as: 'portfolio_show'

  get 'about-me' => 'pages#about'
  get 'contact' => 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

end
