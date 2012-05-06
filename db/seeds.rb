# encoding: utf-8

Category.root.tap do |catalog|
  ##########################################
  ####            Компьютеры             ###
  ##########################################
  catalog.children.find_or_create_by_title('Компьютеры').tap do |computers|
    ['Компьтеры для игр', 'Компьютеры для офиса', 'Компьютеры для дома', 'Компьютеры для дизайна'].each do |title|
      computers.children.find_or_create_by_title(title)
    end
  end

  ##########################################
  ####             Ноутбуки              ###
  ##########################################
  catalog.children.find_or_create_by_title('Ноутбуки').tap do |notebooks|
    %w[Acer Apple ASUS DELL Toshiba HP Lenovo MSI Samsung Sony].each do |vendor|
      notebooks.children.find_or_create_by_title("Ноутбуки #{vendor}") 
    end
  end

  ##########################################
  ####            Планшетные ПК          ###
  ##########################################
  catalog.children.find_or_create_by_title('Планшетные ПК').tap do |tablets|
    ['Планшетные Apple', 'Планшетные Lenovo', 'Планшетные ПК ViewSonic', 'Планшетные ПК прочие'].each do |title|
      tablets.children.find_or_create_by_title(title)
    end
  end

  ##########################################
  ####            Комплектующие          ###
  ##########################################
  catalog.children.find_or_create_by_title('Комплектующие').tap do |components|
  end
  
  ##########################################
  ####             Мониторы              ###
  ##########################################
  catalog.children.find_or_create_by_title('Мониторы').tap do |monitors|
    %w[Acer AOC ASUS BenQ E-Mashines LG Philips Samsung ViewSonic].each do |vendor|
      monitors.children.find_or_create_by_title("Мониторы #{vendor}") 
    end
  end

  ##########################################
  ####       Акустические системы        ###
  ##########################################
  catalog.children.find_or_create_by_title('Акустические системы').tap do |acoustic_systems|
  end

  ##########################################
  ####          Принтеры и МФУ           ###
  ##########################################
  catalog.children.find_or_create_by_title('Принтеры и МФУ').tap do |printers|
  end

  ##########################################
  ####             Телевизоры            ###
  ##########################################
  catalog.children.find_or_create_by_title('Телевизоры').tap do |tv_sets|
  end

  ##########################################
  ####         Клавиатуры и мыши         ###
  ##########################################
  catalog.children.find_or_create_by_title('Клавиатуры и мыши').tap do |keyboards_mouses|
  end

  ##########################################
  ####       Носители информации         ###
  ##########################################
  catalog.children.find_or_create_by_title('Носители информации').tap do |flash|
  end

  ##########################################
  ####           Средства связи          ###
  ##########################################
  catalog.children.find_or_create_by_title('Средства связи').tap do |communications|
  end

  ##########################################
  ####      Периферийные устройства      ###
  ##########################################
  catalog.children.find_or_create_by_title('Периферийные устройства').tap do |peripherals|
  end

  ##########################################
  ####     Устройства электропитания     ###
  ##########################################
  catalog.children.find_or_create_by_title('Устройства электропитания').tap do |powers|
  end
end
