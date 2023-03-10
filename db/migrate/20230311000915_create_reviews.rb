class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :cosmetic_id, null: false
      t.float :rate, null: false, default: 0
      t.text :review, null: false
      t.timestamps
    end
  end
end
