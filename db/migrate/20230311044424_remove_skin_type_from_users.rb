class RemoveSkinTypeFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :skin_type, :integer
  end
end
