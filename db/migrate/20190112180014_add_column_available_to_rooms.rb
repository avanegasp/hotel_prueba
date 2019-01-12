class AddColumnAvailableToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :available, :boolean, default: true
  end
end
