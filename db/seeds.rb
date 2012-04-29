Category.destroy_all

Category.root.tap do |catalog|
  catalog.children.create(:title => 'Computers').tap do |computers|

    computers.children.create(:title => 'Notebooks').tap do |notebooks|
      notebooks.items.create(:vendor => 'HP', :model => 'PAVILION dv6-6c51er').tap do |notebook|
        ['Processor Core i5', 'RAM 4Gb', 'HDD 500 Gb'].each do |text|
          notebook.properties.create :text => text
        end

        notebook.images.create! :file => File.open("#{Rails.root}/spec/fixtures/hp.jpg")
      end
    end

    computers.children.create(:title => 'Netbooks').tap do |netbooks|
      netbooks.items.create(:vendor => 'Asus', :model => 'Eee PC 1225B').tap do |netbook|
        ['Processor E-450', 'RAM 2Gb', 'HDD 320 Gb'].each do |text|
          netbook.properties.create :text => text
        end

        netbook.images.create! :file => File.open("#{Rails.root}/spec/fixtures/asus.jpg")
      end
    end
  end
end
