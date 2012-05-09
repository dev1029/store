Store::Application.routes.draw do
  resource :cart, :only => :show

  resources :categories, :only => :index do
    resources :items, :only => [:index, :show] do
      resources :purchases, :only => :create
    end
  end

  resources :items, :only => [:index]
  resources :orders, :only => :create
  resources :purchases, :only => :destroy

  root :to => 'categories#index'
end
