class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
    	t.integer :student_id
    	t.integer :course_id
    	t.string :semester
   

      t.timestamps
    end
  end
end
