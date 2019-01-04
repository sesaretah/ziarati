class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.string :content
      t.string :uuid
      t.string :category_id
      t.integer :size
      t.boolean :view_in_homepage

      t.timestamps null: false
    end
    add_index :advertisements, :uuid, unique: true
    add_index :advertisements, :category_id
  end
end
