class AddArchive < ActiveRecord::Migration[6.1]
  def change
  	  add_column :archives, :old_id, :integer
  end
end
