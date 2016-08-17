class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
    	t.integer :instructor_id
    	t.string :name
    	t.string :email
    	t.text :bio
      t.timestamps
    end
  end
end
