class CreateBonds < ActiveRecord::Migration[5.0]
  def change
    create_table :bonds do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
    add_index :bonds, :follower_id
    add_index :bonds, :followed_id
    add_index :bonds, [:follower_id, :followed_id], unique: true
  end
end
