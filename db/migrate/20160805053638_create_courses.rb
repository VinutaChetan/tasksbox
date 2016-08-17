class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.integer :course_id
    	t.string :name
    	t.integer :instructor_id
    	t.text :description
      t.timestamps
    end
  end
end
