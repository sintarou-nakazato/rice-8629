Rails.application.routes.draw do
  devise_for :users
  root to: "breakfasts#index"
  resources :breakfasts, only: :index
end
