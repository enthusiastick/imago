Imago::Application.routes.draw do

  devise_for :users

  resources :pieces do
    resources :images
  end

  root 'pages#index'

end
