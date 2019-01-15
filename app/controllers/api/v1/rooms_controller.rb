class Api::V1::RoomsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    rooms = Room.all
    render json:rooms
  end

  def update
    room  = Room.find(params[:id])
    if room.update(room_params)
      render json: room
    else
      render json: {errors: room.errors}, status: 422
    end
  end

  private
  def room_params
    params.require(:room).permit(:available)
  end
end
