class AddForeignKeyToCellars < ActiveRecord::Migration
  def change
    add_column :cellars, :user_id, :integer
  end
end
