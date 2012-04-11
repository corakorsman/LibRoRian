class MusicObject < ActiveRecord::Base
  validates :title, :artist, :presence => true
  validates :title, :uniqueness => {
    :scope => :artist,
    :case_sensitive => false,
    :message => "already taken for that artist"
  }
end