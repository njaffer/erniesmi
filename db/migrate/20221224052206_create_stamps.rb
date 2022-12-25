class CreateStamps < ActiveRecord::Migration[6.1]
  def change
    create_table :stamps do |t|
      t.string :cName
      t.string :pName
      t.string :Address
      t.string :MTimes
      t.string :Waddr
      t.string :Com	
      t.timestamps
    end
  end
end
