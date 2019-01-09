class CreateAccessControls < ActiveRecord::Migration
  def change
    create_table :access_controls do |t|
      t.boolean :ability_to_post_ads
      t.boolean :ability_to_post_blog
      t.boolean :ability_to_verify_ads
      t.boolean :ability_to_change_categories
      t.boolean :ability_to_change_faqs
      t.boolean :ability_to_change_roles
      t.boolean :ability_to_assign_roles
      t.string :uuid
      t.string :role_id

      t.timestamps null: false
    end
    add_index :access_controls, :uuid, unique: true
    add_index :access_controls, :role_id
  end
end
