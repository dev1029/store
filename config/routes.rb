Store::Application.routes.draw do
  resources :categories, :only => [:index, :show] do
    resources :items, :only => [:index, :show]
  end

  root :to => 'categories#index'
end
