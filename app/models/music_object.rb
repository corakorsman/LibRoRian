class MusicObject < ActiveRecord::Base
  validates :title, :artist, :presence => true
  validates :title, :uniqueness => {
    :scope => :artist,
    :message => "already taken for that artist"
  }
end