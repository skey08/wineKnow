class CreateCellars < ActiveRecord::Migration
  def change
    create_table :cellars do |t|
      t.string :name
      t.integer :num_btls
    end
  end
end
