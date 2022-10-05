class CreateGenealogies < ActiveRecord::Migration[6.1]
  def change
    create_table :genealogies do |t|
      t.string :name
      t.string :town
      t.string :dt 
      t.string :county
      t.integer :emi	
      t.timestamps
    end
  end
end
