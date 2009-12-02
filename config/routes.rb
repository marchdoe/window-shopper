ActionController::Routing::Routes.draw do |map|
  map.resources :pages

  Jammit::Routes.draw(map)
  
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.resources :user_sessions
  map.resources :users
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  map.root :controller => "pages"
end
