class AddNameDowncaseToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :name_downcase, :string
  end
end
