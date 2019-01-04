class AddRankToAdvertisement < ActiveRecord::Migration
  def change
    add_column :advertisements, :rank, :integer
  end
end
