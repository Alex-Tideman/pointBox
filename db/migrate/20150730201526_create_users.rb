class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :current_points
      t.integer :redeemed_points
      t.integer :role

      t.timestamps null: false
    end
  end
end
