Rails.application.routes.draw do
  root 'docs#index'

  resources :parcs, except: [:show] do
  end
end