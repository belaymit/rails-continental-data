Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :countries, only: [:index, :show] do
        collection do
          get 'countries_by_location', to: 'countries#countries_by_location'
          get 'countries_by_known_by', to: 'countries#countries_by_known_by'
        end
      end
      get 'countries/:id', to: 'countries#show'
    end
  end
end
