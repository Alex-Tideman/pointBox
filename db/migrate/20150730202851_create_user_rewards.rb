class CreateUserRewards < ActiveRecord::Migration
  def change
    create_table :user_rewards do |t|
      t.references :user
      t.references :reward
    end
  end
end
