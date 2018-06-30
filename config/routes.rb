Rails.application.routes.draw do
  resources :daily_activities, only: [:index]
end
