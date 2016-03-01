Rails.application.routes.draw do

  root 'docs#index'
  resources :parcs, except: [:new, :edit] do
    resources :reviews, except: [:new, :edit]
  end
end
