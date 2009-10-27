ActionController::Routing::Routes.draw do |map|

  map.resources :animals
  
  map.root :controller => "animals"
end
