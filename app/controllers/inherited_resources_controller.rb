class InheritedResourcesController < ApplicationController
  inherit_resources

  before_filter :find_or_create_cart

  protected
    def find_or_create_cart
      @cart ||= Cart.find_or_create_by_id(session[:cart_id])
      session[:cart_id] = @cart.id
    end
end
