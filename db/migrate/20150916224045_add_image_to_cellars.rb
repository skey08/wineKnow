class AddImageToCellars < ActiveRecord::Migration
  def change
    add_column :cellars, :image, :string
  end
end
