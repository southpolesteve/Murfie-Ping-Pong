Scratch::Application.routes.draw do
  get "games/create"

  get "players/create"

  root :to => 'content#home'
end
