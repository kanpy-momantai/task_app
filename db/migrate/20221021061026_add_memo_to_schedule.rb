class AddMemoToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :memo, :string
  end
end
