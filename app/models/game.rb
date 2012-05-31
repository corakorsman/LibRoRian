class Game < ActiveRecord::Base
  validates :title, :system, :presence => true
  validates :title, :uniqueness => {
    :scope => :system,
    :case_sensitive => false,
    :message => "already taken for that system."
  }

  has_many :library_object_tags, :as => :library_object
  has_many :tags, :through => :library_object_tags

  def tag!(tags)
    tags = tags.split(",").map do |tag|
      Tag.find_or_create_by_name(tag.strip)
    end
    
    self.tags << tags
  end
end