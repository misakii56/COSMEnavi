class AddSourceToCosmetics < ActiveRecord::Migration[6.1]
  def change
    add_column :cosmetics, :source, :text
  end
end
