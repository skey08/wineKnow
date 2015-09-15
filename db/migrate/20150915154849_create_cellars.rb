class CreateCellars < ActiveRecord::Migration
  def change
    create_table :cellars do |t|
      t.string :name, :null => false
      t.string :photo_url, :null => false
      t.integer :num_btls
    end
  end
end
