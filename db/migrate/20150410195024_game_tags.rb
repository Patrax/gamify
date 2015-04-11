class GameTags < ActiveRecord::Migration
  def change
    create_table :game_tags do |t|
      t.integer :tag_id, :game_id
    end
  end
end
