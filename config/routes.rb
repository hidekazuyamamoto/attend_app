Rails.application.routes.draw do
  resources :attends do
    collection do
      delete 'destroy_all'
    end
  end
  root to:"attends#new"
end
