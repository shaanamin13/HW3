class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :user_id
      t.string :email
      t.string :session_token

      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
 
  def down
    drop_table :users # deletes the whole table and all its data!
  end
end
