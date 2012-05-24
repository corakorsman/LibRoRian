class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
  end
    
    create_table :library_object_tags, :id => false do |t|
      t.integer :tag_id, :library_object_id
    end
  end
end