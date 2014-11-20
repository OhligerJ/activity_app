class ActivityUsers < ActiveRecord::Migration
  def change
    create_table :activity_users do |t|
      t.integer :user_id
      t.integer :activity_id
    end
  end
end
