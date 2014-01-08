GeneratePdf::Application.routes.draw do
  resources :items

  resources :orders

  root :to => "home#index"
end
