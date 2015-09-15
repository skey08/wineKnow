class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.string :winery, :null =>false
      t.string :region, :null => false
      t.string :varietal, :null => false
      t.integer :year
      t.references :cellar, index: true, foreign_key: true
    end
  end
end
