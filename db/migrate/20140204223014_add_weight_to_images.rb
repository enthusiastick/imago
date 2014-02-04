class AddWeightToImages < ActiveRecord::Migration
  def change
    add_column :images, :weight, :integer, default: 0
    add_column :pieces, :weight, :integer, default: 0
  end
end
