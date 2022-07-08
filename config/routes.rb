Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get "portfolio", to: "pages#portfolio", as: :portfolio
  get "contact", to: "pages#contact", as: :contact
end
