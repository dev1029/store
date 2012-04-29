class Category < ActiveRecord::Base
  attr_accessible :title

  validates :title, :presence => true, :uniqueness => true

  has_many :items, :dependent => :destroy

  has_ancestry

  alias_attribute :to_s, :title

  def self.root
    find_or_create_by_title I18n.t('catalog_name')
  end
end
