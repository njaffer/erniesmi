class CreateManuscripts < ActiveRecord::Migration[6.1]
  def change
    create_table :manuscripts do |t|
      t.string :mnum
      t.string :c_or_s
      t.string :ste 
      t.string :town
      t.string :m 
      t.string :dd 
      t.string :yr 
      t.string :marking	
      t.string :county
      t.integer :emi
      t.integer :old_id
      t.integer :new_id
      t.timestamps
    end
  end
end
