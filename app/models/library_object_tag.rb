class LibraryObjectTag < ActiveRecord::Base
  belongs_to :library_object, :polymorphic => true
  belongs_to :tag
end
