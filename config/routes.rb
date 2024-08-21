Rails.application.routes.draw do
  resources :projects
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcomes#index"
  resources :students

  namespace :admin do
    get 'dashboard' => 'dashboard#index'
  end
end
