Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: "doctors#index"
  # get "doctors", to: "doctors#index", as: :doctors
  # get "doctors/new", to: "doctors#new", as: :new_doctor
  # post "doctors", to: "doctors#create"
  # get "/doctors/:id/edit", to: "doctors#edit", as: "edit_doctor"
  # get "doctors/:id", to: "doctors#show", as: :doctor
  # patch "doctors/:id", to: "doctors#update"
  # delete "doctors/:id", to: "doctors#destroy", as: :delete_doctor

  root to: "pages#home"
  resources :doctors, :patients
end
