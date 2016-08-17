class AddCodeToEmployees < ActiveRecord::Migration
  def change
  	add_column :employees,:code,:string
  end
end
