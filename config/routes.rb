Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :banks, except: [:show, :destroy] do
      member do
        put :toggle_activation
      end
    end
  end

  resources :payments, only: :update
end
