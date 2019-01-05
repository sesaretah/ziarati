class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :telegram_channel
      t.string :instagram_page
      t.string :address
      t.text :about_us
      t.string :uuid

      t.timestamps null: false
    end
    add_index :companies, :uuid, unique: true
  end
end
