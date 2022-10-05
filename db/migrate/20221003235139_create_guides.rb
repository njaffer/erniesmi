class CreateGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :guides do |t|
      t.string :tag	
      t.text :oneline	
      t.timestamps
    end
  end
end
