# encoding: utf-8

class CategoriesController < InheritedResourcesController
  actions :index

  def index
    index! {
      @computers = Category.find_by_title('Компьютеры')
      @notebooks = Category.find_by_title('Ноутбуки')
      @monitors = Category.find_by_title('Мониторы')
      @tablets = Category.find_by_title('Планшетные ПК')
    }
  end
end
