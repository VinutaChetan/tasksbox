class RemoveColumnUserIdFromClients < ActiveRecord::Migration
  def change
  	remove_column :clients,:user_id
  end
end
