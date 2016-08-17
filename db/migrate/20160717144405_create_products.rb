class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :name
    	t.float  :price
    	t.string  :unit
    	t.boolean :in_stock
    	t.date :available_from
    	t.integer :category
    	 t.timestamps null:false

      t.timestamps
    end
  end
end
