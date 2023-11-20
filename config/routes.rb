Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "doctors#index"
  get "doctors", to: "doctors#index", as: :doctors
  get "doctors/new", to: "doctors#new", as: :new_doctor
  post "doctors", to: "doctors#create"
  get "doctors/:id", to: "doctors#show", as: :doctor
end
