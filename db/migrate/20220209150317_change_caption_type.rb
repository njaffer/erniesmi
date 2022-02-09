class ChangeCaptionType < ActiveRecord::Migration[6.1]
  def change
  	change_table :archives do |t|
      t.change :caption, :text
      end
  end
end
