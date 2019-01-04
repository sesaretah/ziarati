class AddUuidToCategorization < ActiveRecord::Migration
  def change
    add_column :categorizations, :uuid, :string
    add_index :categorizations, :uuid, unique: true
  end
end
