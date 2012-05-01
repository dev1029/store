class InheritedResourcesController < ApplicationController
  inherit_resources

  before_filter :find_or_create_cart, :store_cart_id_to_session

  has_searcher

  helper_method :cart

  protected
    def find_or_create_cart
      @cart ||= Cart.find_or_create_by_id(session[:cart_id])
    end

    def store_cart_id_to_session
      session[:cart_id] = @cart.id
    end

    def cart
      @cart
    end
end
