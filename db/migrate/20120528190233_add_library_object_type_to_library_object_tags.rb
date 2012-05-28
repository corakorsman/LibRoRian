class AddLibraryObjectTypeToLibraryObjectTags < ActiveRecord::Migration
  def change
    change_table :library_object_tags do |t|
      t.string :library_object_type
    end
  end
end
