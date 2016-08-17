class CreateProjectCategories < ActiveRecord::Migration
  def change
    create_table :project_categories do |t|
    	t.string :project_id
    	t.string  :category_id
      t.timestamps
    end
  end
end
