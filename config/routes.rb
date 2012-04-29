Store::Application.routes.draw do
  resources :categories, :only => [:index, :show] do
    resources :items, :only => [:index, :show] do
      resources :purchases, :only => :create
    end
  end

  resources :purchases, :only => :destroy

  root :to => 'categories#index'
end
