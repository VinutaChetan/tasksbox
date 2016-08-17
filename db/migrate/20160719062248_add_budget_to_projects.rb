class AddBudgetToProjects < ActiveRecord::Migration
  def change
  	#add_column :table_name, :column_name, :column_type
  	add_column :projects,:budget,:integer

  	#setting value to zero Project.all.each{|project| project.update_attributes(estimated_budget :0)}
  end
end
