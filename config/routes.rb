Rails.application.routes.draw do
  resources :users do
    member do
      get 'top'
    end
  end
  root to: 'users#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
