Rails.application.routes.draw do
  devise_for :users
  resources :attends do
    collection do
      delete 'destroy_all'
    end
  end
  resources :subjects
  root to:"attends#index"
end
