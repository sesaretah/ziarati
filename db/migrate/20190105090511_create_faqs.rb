class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.string :question
      t.text :answer
      t.string :uuid

      t.timestamps null: false
    end
    add_index :faqs, :uuid, unique: true
  end
end
