Rails.application.routes.draw do

  root 'parcs#index'

  resources :parcs, except: [:show, :new, :edit] do
    resources :reviews, except: [:show, :new, :edit]
  end
end
