class AddMediumToMusicObjects < ActiveRecord::Migration
  def change
    add_column :music_objects, :medium, :string
  end
end
