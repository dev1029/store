desc 'generate files with products from category'
task :generate_product_files => :environment do
  ids = ENV['id'].split(',')

  price = Price.new("#{Rails.root}/price/price.xml")

  ids.each do |id|
    File.open(id, 'w') do |file|
      price.offers(id.to_i).each do |offer|
        file.puts offer 
      end
    end
  end
end
