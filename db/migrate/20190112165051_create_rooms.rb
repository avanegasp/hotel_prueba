class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :rate
      t.integer :minibar
    end
  end
end
