ActionController::Routing::Routes.draw do |map|
  Jammit::Routes.draw(map)
  map.resources :products
  map.resources :categories
  map.root :products
end
