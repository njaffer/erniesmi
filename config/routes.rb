Rails.application.routes.draw do

  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'home#index'

get 'index' => "home#index"

resources :archives do
    collection do
      get :index, :cat, :batch, :new, :advanced_search, :test, :search, :letter, :county, :city, :category, :edit, :missionary, :manuscripts, :manuscripts_city, :genealogy, :guide
      post  :save, :import, :searchlist, :search, :advanced_search, :editsave
    end
  end 

resources :about do
    collection do
      get :about, :bookshelf, :stamp, :genealogy, :history, :national
    end
  end   
 
 resources :missionary do
   collection do
      get :import_file
      post :import 
   end  
 end

  resources :manuscript do
   collection do
      get :import_file
      post :import 
   end  
 end

  resources :genealogy do
   collection do
      get :import_file
      post :import 
   end  
 end

 resources :permit do
    collection do
      get :index
      post :save
    end
  end  

 resources :contact do
    collection do
      get :index, :support
      
    end
  end  
end
