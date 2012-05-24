class Game < ActiveRecord::Base
  validates :title, :system, :presence => true
  validates :title, :uniqueness => {
    :scope => :system,
    :case_sensitive => false,
    :message => "already taken for that system."
  }

  has_and_belongs_to_many :tags, :join_table => "library_object_tags", :foreign_key => :library_object_id

 def tag!(tags)
  tags = tags.split(",").map do |tag|
    Tag.find_or_create_by_name(tag)
  end
  
  self.tags << tags
  end
end