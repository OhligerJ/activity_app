class CreateActivityUsers < ActiveRecord::Migration
  def change
    create_table :activity_users do |t|

      t.timestamps
    end
  end
end
