class AddColumnToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :slot, :datetime
  end
end
