class Movie < ActiveRecord::Base
      validates :title, :medium, :presence => true
  validates :title, :uniqueness => { 
    :scope => :medium, 
    :message => "already taken for that medium." 
  } 
end
