class HotelRoomController < ApplicationController
	def index
		@hotel_room = HotelRoom.all
	end
	def new
    @hotel_room = HotelRoom.new
  end
  def show
    @hotel_room = HotelRoom.find(params[:id])
 	end
  def create
  	@hotel_room = HotelRoom.new(hotel_params)
   	if @hotel_room.save
     	redirect_to :back, :notice => "added new hotel"
  	end
 	end
 	def hotel_params
 		params.require(:hotel_room).permit(:name, :rooms, :room_type, :cost)
	end

end
