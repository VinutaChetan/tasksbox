class CreateVenders < ActiveRecord::Migration
  def change
    create_table :venders do |t|
      t.string :name

      t.timestamps
    end
  end
end
