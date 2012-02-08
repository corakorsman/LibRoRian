class MusicObject < ActiveRecord::Base
  validates :title, :presence => true
  validates :artist, :presence => true
  validates :title, :uniqueness => 
  { :scope => :artist }
    #:message => "Music Object already exist" } 
  

  # nog validation toevoegen die met case sensitivity te maken heeft. Dus dat hoofdlettergebruik geen 
  # dubbele records oplevert.
  #validates :title, :artist, uniqueness => { :case_sensitive => false }

#bijbehorende table is dan "dus" music_objects
end
