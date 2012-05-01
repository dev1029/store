class ItemSearch < Search
  attr_accessible :keywords

  column :keywords, :text
  column :per_page, :integer
end
