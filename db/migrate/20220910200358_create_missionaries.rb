class CreateMissionaries < ActiveRecord::Migration[6.1]
  def change
    create_table :missionaries do |t|
      t.string :city
      t.string :txt
      t.string :pdate
      t.string :ahms
      t.integer :pid
      t.integer :emi	
      t.timestamps
    end
  end
end
