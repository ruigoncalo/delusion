Delusion::Application.routes.draw do
  	devise_for :users

    match '/graficos', :to => 'home#graficos'

  	root :to => "home#index"
end
