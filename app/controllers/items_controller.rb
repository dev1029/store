class ItemsController < InheritedResourcesController
  actions :index, :show

  belongs_to :category

  def show
    show! { @purchase = @item.purchases.build }
  end
end
