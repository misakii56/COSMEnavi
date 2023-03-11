class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :skin_type_id, :integer
    add_column :users, :parsonal_color_id, :integer
  end
end
