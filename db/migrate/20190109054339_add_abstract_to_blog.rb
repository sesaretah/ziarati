class AddAbstractToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :abstract, :text
  end
end
