class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :like
      t.integer :user_id, :game_id
      t.timestamps
    end
  end
end
