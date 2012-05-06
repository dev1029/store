class Price
  attr_accessor :xml_path

  def initialize(xml_path) 
    self.xml_path = xml_path
  end

  def offers(*category_ids)
    offers_with_positive_price(category_ids).map { |offer|
      "#{offer.name}|#{offer.category_id}|#{offer.price * yandex_market_price.exchange_rate}|" 
    }
  end

  private
    def yandex_market_price
      Ymp::PriceList.new xml_path
    end

    def offers_with_positive_price(category_ids)
      yandex_market_price.offers(category_ids).select { |offer| offer.price > 0 }
    end
end
