class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :origin
      t.string :destination
      t.integer :cost
      t.integer :size
      t.integer :user_id
      t.integer :boat_id
      t.timestamps
    end
  end
end
