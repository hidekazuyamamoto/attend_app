Rails.application.routes.draw do
  resources :attends
  root to:"attends#new"
end
