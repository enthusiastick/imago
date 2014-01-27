Imago::Application.routes.draw do

  devise_for :users

  resources :pieces

  root 'pages#index'

end
