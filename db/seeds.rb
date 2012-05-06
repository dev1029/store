# encoding: utf-8

Category.root.tap do |catalog|
  catalog.children.find_or_create_by_title('Ноутбуки').tap do |notebooks|
    %w[Acer Apple ASUS DELL Toshiba HP Lenovo MSI Samsung Sony].each do |vendor|
      notebooks.children.find_or_create_by_title("Ноутбуки #{vendor}") 
    end
  end

  catalog.children.find_or_create_by_title('Мониторы').tap do |monitors|
    %w[Acer AOC ASUS BenQ E-Mashines LG Phillips Samsung ViewSonic].each do |vendor|
      monitors.children.find_or_create_by_title("Moниторы #{vendor}") 
    end
  end
end
