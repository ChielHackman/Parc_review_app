Rails.application.routes.draw do

  root 'docs#index'
  resources :parcs, except: [:new] do
  end
end
