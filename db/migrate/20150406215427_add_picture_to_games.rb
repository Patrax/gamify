class AddPictureToGames < ActiveRecord::Migration
  def change
    add_column :games, :picture, :string
  end
end
