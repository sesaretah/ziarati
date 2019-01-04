class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :uuid
      t.boolean :view_in_homepage
      t.integer :rank

      t.timestamps null: false
    end
    add_index :blogs, :uuid, unique: true
  end
end
