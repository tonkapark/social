ActionController::Routing::Routes.draw do |map|
 
  map.resources :items, :as => "conversations", :has_many => :comments
  map.root :controller => "home"
  map.home ':page', :controller => 'home', :action => 'show', :page =>  /about/
end
