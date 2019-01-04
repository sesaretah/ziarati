class ChangeTyoeOfContentInAdrvetisements < ActiveRecord::Migration
  def change
    change_column :advertisements, :content, :text
  end
end
