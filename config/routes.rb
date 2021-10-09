Rails.application.routes.draw do
  devise_for :users
  resources :attends do
    collection do
      delete 'destroy_all'
    end
  end
  root to:"attends#index"
end
