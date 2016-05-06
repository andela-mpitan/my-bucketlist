Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:show, :create, :update, :destroy]
  end

  namespace :api do
    namespace :v1 do
      resources :bucketlists, except: [:new, :edit] do
        resources :items, only: [:create, :update, :destroy]
      end
    end
  end
end
