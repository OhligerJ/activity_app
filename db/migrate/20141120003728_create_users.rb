class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :location
      t.string :img
      t.text :description
      t.string :password
      t.string :password_digest

      t.timestamps
    end
  end
end
