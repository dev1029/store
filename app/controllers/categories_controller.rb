class CategoriesController < InheritedResourcesController
  actions :index, :show

  protected
    def collection
      Category.root.children
    end
end
