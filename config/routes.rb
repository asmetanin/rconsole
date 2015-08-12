Rails.application.routes.draw do
  post 'interpreter', to: 'interpreter#index' 

  root to: 'visitors#index'
end
