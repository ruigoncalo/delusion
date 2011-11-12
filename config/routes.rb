Delusion::Application.routes.draw do
  	devise_for :users

    match '/graficos', :to => 'home#graficos'
	match '/graphicspie', :to => 'home#graphicspie'
	match '/graphicscolumns', :to => 'home#graphicscolumns'
  	
	root :to => "home#index"
end
