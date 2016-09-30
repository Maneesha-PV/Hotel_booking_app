class BookingController < ApplicationController
	def index
	end
	def new
		#@booking = Booking.new
		@hotel = HotelRoom.find params[:hotel_room_id]
	end
	def create
		@booking = Booking.new(booking_params)
		@booking.hotel_room_id = params[:hotel_id]
		@booking.user_id = current_user.id
		if @booking.save
			render plain: "Booking successful"
		else
			byebug
			redirect_to :back, :alert => "field cannot be blank"
		end
	end
	

 private
 def booking_params
 	params.require(:booking).permit(:check_in_date, :number_of_days, :number_of_children,:number_of_guest,:number_of_rooms, :hotel_room_id )
 end

end
