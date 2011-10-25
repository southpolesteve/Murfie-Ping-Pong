Scratch::Application.routes.draw do
  resources :games, :only => [:create]

  resources :players, :only => [:create]

  root :to => 'content#home'
end
