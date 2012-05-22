class AddGenreToLibraryObjects < ActiveRecord::Migration
  def change
    add_column :music_objects, :genre, :string
    add_column :movies, :genre, :string
    add_column :games, :genre, :string
  end
end
