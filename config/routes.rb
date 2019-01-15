Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :reservations
    end
  end

  namespace :api do
    namespace :v1 do
      resources :rooms
    end
  end

end
