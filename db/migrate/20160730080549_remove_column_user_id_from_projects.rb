class RemoveColumnUserIdFromProjects < ActiveRecord::Migration
  def change
  	remove_column :projects,:user_id
  end
end
