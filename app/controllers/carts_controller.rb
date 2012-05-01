class CartsController < InheritedResourcesController
  actions :show 

  def show
    show! { @order = Order.new }
  end
end
