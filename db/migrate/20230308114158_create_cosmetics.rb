class CreateCosmetics < ActiveRecord::Migration[6.1]
  def change
    create_table :cosmetics do |t|
      t.string :brand, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end
