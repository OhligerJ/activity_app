class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :activity_id
      t.integer :user_id
      t.integer :star_count

      t.timestamps
    end
  end
end
