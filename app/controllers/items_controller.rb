class ItemsController < InheritedResourcesController
  actions :index, :show

  belongs_to :category, :optional => true

  def show
    show! { @purchase = @item.purchases.build }
  end

  protected
    def per_page
      params[:per_page] || 10
    end

    def page
      params[:page] || 1
    end

    def paginate_options
      {
        :page => page,
        :per_page => per_page
      }
    end

    def results
      end_of_association_chain.page(page).per(per_page)
    end  

    def search_results
      searcher.pagination = paginate_options
      results = searcher.results

      results
    end

    def search_and_paginate_collection
      params[:utf8] ? search_results : results
    end

    def collection
      get_collection_ivar || set_collection_ivar(search_and_paginate_collection)
    end
end
