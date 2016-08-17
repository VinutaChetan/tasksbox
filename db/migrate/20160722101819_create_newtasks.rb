class CreateNewtasks < ActiveRecord::Migration
  def change
    create_table :newtasks do |t|
    	t.string :title
    	t.integer :project_id
    	t.date :due_date
    	t.boolean :is_completed #default:false
      t.timestamps
    end
  end
end