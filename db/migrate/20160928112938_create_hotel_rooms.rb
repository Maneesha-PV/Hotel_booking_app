class CreateHotelRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :hotel_rooms do |t|
      t.string :name
      t.integer :rooms
      t.string :room_type
      t.integer :cost

      t.timestamps
    end
  end
end
