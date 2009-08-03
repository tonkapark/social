ActionController::Routing::Routes.draw do |map|
 
  map.resources :items, :as => "conversations", :has_many => :comments
  map.resources :users, :as => "people" do |users|
    users.resource :password,
      :controller => 'clearance/passwords',
      :only => [:create, :edit, :update]

    users.resource :confirmation,
      :controller => 'clearance/confirmations',
      :only => [:new, :create]
    end
  
  map.root :controller => "home"
  map.home ':page', :controller => 'home', :action => 'show', :page =>  /about/
end
