# encoding: utf-8

class Category < ActiveRecord::Base
  attr_accessible :title

  validates :title, :presence => true, :uniqueness => true

  has_many :items, :dependent => :destroy

  def self.root
    find_or_create_by_title 'Каталог'
  end
end
