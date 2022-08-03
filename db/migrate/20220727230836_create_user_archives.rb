class CreateUserArchives < ActiveRecord::Migration[6.1]
  def change
    create_table :user_archives do |t|
      t.string  :email
      t.integer  :a_id
      t.timestamps
    end
  end
end
