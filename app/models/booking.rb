class Booking < ApplicationRecord
	belongs_to :user
	belongs_to :hotel_room
	validates_presence_of :number_of_rooms, :number_of_days
end
