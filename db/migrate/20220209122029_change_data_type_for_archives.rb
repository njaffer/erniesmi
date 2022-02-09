class ChangeDataTypeForArchives < ActiveRecord::Migration[6.1]
  def change
  	def self.up
    change_table :archives do |t|
      t.change :caption, :text
      end
    end
    def self.down
      change_table :archives do |t|
        t.change :caption, :text
      end
    end
  end
end
