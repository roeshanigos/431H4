Rails.application.routes.draw do
  # root route
  root 'books#home'

  resources :books do
    member do
      get :delete
    end

    collection do
      get :export
    end

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
