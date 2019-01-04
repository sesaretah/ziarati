class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :uuid
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :categories, :uuid, unique: true
  end
end
