class Tag < ActiveRecord::Base
  has_many :library_object_tags
  has_many :music_objects,
           :through => :library_object_tags,
           :source => :library_object,
           :source_type => 'MusicObject'
  has_many :movies,
           :through => :library_object_tags,
           :source => :library_object,
           :source_type => 'Movie'
  has_many :games,
           :through => :library_object_tags,
           :source => :library_object,
           :source_type => 'Game'
end