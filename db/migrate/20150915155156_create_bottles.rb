class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.string :name
      t.string :region
      t.string :varietal
      t.integer :year
      t.references :cellar, index: true, foreign_key: true
    end
  end
end
