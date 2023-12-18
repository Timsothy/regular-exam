Rails.application.routes.draw do
  get 'students/show/:id', to: 'students#show', as: 'student', constraints: { id: /\d+/ }
  devise_for :students
  root to: "tests#index"
  resources :tests
end