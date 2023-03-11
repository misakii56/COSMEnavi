class RemoveParsonalColorFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :parsonal_color, :integer
  end
end
