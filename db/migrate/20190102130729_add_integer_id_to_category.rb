class AddIntegerIdToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :integer_id, :integer
  end
end
