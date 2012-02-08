class CreateMusicObjects < ActiveRecord::Migration
  def change
    create_table :music_objects do |t|
      t.string :title
      t.string :artist

      t.timestamps
    end
  end
end
