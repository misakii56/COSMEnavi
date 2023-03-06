class CreateParsonalColors < ActiveRecord::Migration[6.1]
  def change
    create_table :parsonal_colors do |t|
      t.string :color_name, null: false
      t.timestamps
    end
  end
end
