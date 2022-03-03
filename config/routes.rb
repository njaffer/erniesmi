Rails.application.routes.draw do

  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'home#index'

resources :archives do
    collection do
      get :index, :new, :advanced_search, :test, :search, :letter, :county, :city, :category, :edit
      post :save, :import, :searchlist, :search, :advanced_search, :update
    end
  end 

 resources :permit do
    collection do
      get :index
      post :save
    end
  end  
end
