class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :current_city, :string
    add_column :users, :bio, :text
    add_column :users, :img_url, :string
  end
end
