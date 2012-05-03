class MusicObject < ActiveRecord::Base
  validates :title, :artist, :medium, :presence => true
  validates :title, :uniqueness => {
    :scope => :medium,
    :case_sensitive => false,
    :message => "already taken for that artist"
  }
end