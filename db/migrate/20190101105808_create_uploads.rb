class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :uploadble_type
      t.string :uploadable_id
      t.string :attachment_type

      t.timestamps null: false
    end
    add_index :uploads, :uploadable_id
    add_index :uploads, :attachment_type
  end
end
