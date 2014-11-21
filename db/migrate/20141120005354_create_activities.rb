class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :location
      t.integer :time_min
      t.integer :time_max
      t.text :description
      t.string :api_url
      t.float :star_rating
      t.integer :user_id
      t.string :img_url

      t.timestamps
    end
  end
end
