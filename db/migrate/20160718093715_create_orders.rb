class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.date :order_date
    	t.string :order_number
      t.timestamps
    end
  end
end
