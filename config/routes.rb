Rails.application.routes.draw do
  devise_for :students
  root to: "tests#index"
  resources :tests
end