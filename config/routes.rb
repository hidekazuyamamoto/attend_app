Rails.application.routes.draw do
  devise_for :users

  resources :subjects do
    resources :attends do
      collection do
        delete 'destroy_all'
      end
    end
  end

  root to:"attends#index"
end
