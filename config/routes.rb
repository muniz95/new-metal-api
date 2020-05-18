Rails.application.routes.draw do
  devise_for :users,
  path: "",
  path_names: {
    sign_in: "api/v1/login",
    sign_out: "api/v1/logout",
    registration: "api/v1/signup",
  },
  controllers: {
    sessions: "api/v1/sessions",
    registrations: "api/v1/registrations",
  }
  root to: "home#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :artists
      resources :bands do
        get 'members', on: :member
        get 'reviews', on: :member
      end
      resources :band_statuses, only: :index
      resources :countries
      resources :labels
      resources :releases do
        get 'lineup', on: :member
        get 'versions', on: :member
        get 'reviews', on: :member
      end
      resources :reviews
      resources :songs
    end
  end
end
