class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :current_points, default: 0
      t.integer :redeemed_points, default: 0
      t.integer :role, default: 0

      t.timestamps null: false
    end
  end
end
