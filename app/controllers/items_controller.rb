class ItemsController < InheritedResourcesController
  actions :index, :show

  belongs_to :category
end
