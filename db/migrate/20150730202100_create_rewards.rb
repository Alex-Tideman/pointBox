class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :reward_type
      t.integer :value

      t.timestamps null: false
    end
  end
end
