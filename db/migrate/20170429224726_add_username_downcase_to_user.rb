class AddUsernameDowncaseToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username_downcase, :string
  end
end
