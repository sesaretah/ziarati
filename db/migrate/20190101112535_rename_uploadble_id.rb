class RenameUploadbleId < ActiveRecord::Migration
  def change
    rename_column :uploads, :uploadble_type, :uploadable_type
  end
end
