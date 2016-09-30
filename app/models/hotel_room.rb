class HotelRoom < ApplicationRecord
	has_many :bookings
	has_many :users, through: :booking
end
