class PurchasesController < InheritedResourcesController
  actions :create, :destroy

  belongs_to :item, :optional => true

  protected
    def build_resource
      parent.purchases.build :cart => cart
    end
end
