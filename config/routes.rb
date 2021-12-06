Rails.application.routes.draw do
  # resources :apartments
  # resources :users

  namespace :api, :defaults => { :format => 'json' } do
    namespace :v1 do
      resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
