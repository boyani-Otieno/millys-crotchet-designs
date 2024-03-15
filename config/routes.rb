Rails.application.routes.draw do
  devise_for :admins
  #devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   get "up" => "rails/health#show", as: "rails_healtyh_check"
  # Defines the root path route ("/")
   root "home#index"

   authenticated :admin_user do
    root to: 'admin#index', as: :admin_root
   end

   get "admin" => "admin#index"
end
