Rails.application.routes.draw do

  resources :manufacturers, only: [:create, :show] do
    resources :categories, only: [] do
      resources :products, only: [:create]
    end
  end

  resources :categories
  
  resources :medicines

end
