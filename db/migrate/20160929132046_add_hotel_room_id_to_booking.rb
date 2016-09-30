class AddHotelRoomIdToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :hotel_room_id, :integer
  end
end
