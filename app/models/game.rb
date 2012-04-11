class Game < ActiveRecord::Base
  validates :title, :system, :presence => true
  validates :title, :uniqueness => {
    :scope => :system,
    :message => "already taken for that system."
  }
end