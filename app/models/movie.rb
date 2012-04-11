class Movie < ActiveRecord::Base
  validates :title, :medium, :presence => true
  validates :title, :uniqueness => {
    :scope => :medium,
    :case_sensitive => false,
    :message => "already taken for that medium."
  }
end