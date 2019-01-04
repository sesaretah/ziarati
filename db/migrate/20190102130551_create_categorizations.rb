class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.string :category_id
      t.string :advertisement_id

      t.timestamps null: false
    end
    add_index :categorizations, :category_id
    add_index :categorizations, :advertisement_id
  end
end
