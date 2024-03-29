Rails.application.routes.draw do

  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'home#index'

get 'index' => "home#index"

resources :archives do
    collection do
      get :index, :add_files, :import_txt, :batchupload, :cat, :batch, :new, :advanced_search, :test, :search, :letter, :county, :city, :category, :edit, :missionary, :edit_manuscripts, :manuscripts, :manuscripts_city, :genealogy,:genealogy_county,:guide
      post  :save, :import, :import_new, :searchlist, :search, :advanced_search, :editsave, :batchsave
    end
  end 

resources :about do
    collection do
      get :about, :bookshelf, :stamp, :genealogy, :history, :national, :import_data
      post :import
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
      post :import, :save
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
