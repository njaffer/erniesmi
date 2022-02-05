Rails.application.routes.draw do

  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'home#index'

resources :archives do
    collection do
      get :new, :search
      post :save, :import, :searchlist
    end
  end 
end
