class CreateFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :follows do |t|
      t.string :commenter
      t.integer :user_id_1
      t.integer :user_id_2
 
      t.timestamps
    end
  end
end
