Hotbutton::Application.routes.draw do

  devise_for :users, skip: [:sessions],
  :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  as :user do
    get "/login" => 'devise/sessions#new', as: :new_user_session
    post "/login" => 'devise/sessions#create', as: :user_session
    delete "/logout" => 'devise/sessions#destroy', as: :destroy_user_session
  end

  resources :pages
  resources :campaigns
  root 'pages#public_home'

end
