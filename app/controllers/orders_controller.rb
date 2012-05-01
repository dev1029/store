class OrdersController < InheritedResourcesController
  actions :create  

  protected
    def build_resource
      Order.new.tap { |order| order.cart = cart }
    end
end
