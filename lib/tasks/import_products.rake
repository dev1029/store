# encoding: utf-8

def categories
  { 
    '22' => Category.find_by_title('Мониторы Acer'),
    '23' => Category.find_by_title('Мониторы AOC'),
    '24' => Category.find_by_title('Мониторы ASUS'),
    '25' => Category.find_by_title('Мониторы BenQ'),
    '26' => Category.find_by_title(''),
    '27' => Category.find_by_title('Мониторы LG'),
    '28' => Category.find_by_title('Мониторы Philips'),
    '29' => Category.find_by_title('Мониторы Samsung'),
    '30' => Category.find_by_title('Мониторы ViewSonic'),
  }
end

desc 'Import products from file'
task :import_products => :environment do
  file = ENV['file'] 

  File.open(file) do |f|
    while line = f.gets
      description, category_id, offer_id, price, vendor, model, url = line.split('|')

      break if description.blank? || category_id.blank? || offer_id.blank? || price.blank? || url.blank?

      if item = Item.find_by_price_offer_id(offer_id)
        puts "=== update product with offer_id = #{offer_id}"
        item.update_attributes(:price => price.to_f, :price_description => description)
      else
        html = HTTParty.get(url).body

        page = Ymp::ProductPage.new(html)

        if page.valid?
          puts "=== new product with offer_id = #{offer_id}"
          if category = categories[category_id]
            category.items.create(:vendor => vendor, 
                                  :model => model, 
                                  :price_category_id => category_id,
                                  :price_description => description,
                                  :price_offer_id => offer_id).tap do |item|
              page.properties.each do |property|
                item.properties.create :text => property
              end

              item.images.create :file => Ymp::Image.new(page.image_url).file
                                  end
          else
            puts "category with id #{category_id} doesn't exists"
          end
        else
          puts "page #{url} is not valid"
        end
      end
    end

  end

  Sunspot.commit
end

