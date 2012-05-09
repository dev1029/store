desc 'generate files with products from category'
task :generate_product_files => :environment do
  file = ENV['file']
  categories = ENV['categories'].split(',')

  price = Price.new(file)

  categories.each do |category|
    File.open(category, 'w') do |f|
      price.offers(category.to_i).each do |offer|
        f.puts offer 
      end
    end
  end
end
