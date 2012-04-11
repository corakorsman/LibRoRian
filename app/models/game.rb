class Game < ActiveRecord::Base
  validates :title, :system, :presence => true
  validates :title, :uniqueness => {
    :scope => :system,
    :case_sensitive => false,
    :message => "already taken for that system."
  }
end