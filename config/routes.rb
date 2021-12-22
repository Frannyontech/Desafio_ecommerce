Rails.application.routes.draw do
  resources :coupons
  devise_for :users
  devise_for :admins


  authenticate :admin do
    resources :products
    resources :categories
  end

  resource :cart, only: [:show, :update] do
    member do
      post :pay_with_paypal
      get  :process_paypal_payment
    end
  end

  get '/item/:id', to: 'home#show', as: 'item'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
