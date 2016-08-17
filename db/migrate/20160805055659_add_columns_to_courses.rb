class AddColumnsToCourses < ActiveRecord::Migration
  def change
  	add_column :courses,:student_id,:integer

  end
end
