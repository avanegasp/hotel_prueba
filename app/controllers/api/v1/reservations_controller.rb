class Api::V1::ReservationsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    rooms = Room.where(available: false)
    render json:rooms
  end

  def create
    reservation = Reservation.new(reservation_params)
    if reservation.save
       reservation.room.update(available: true)
      render json: reservation
    else
      render json: { errors: reservation.errors }, status: 422
    end
  end

  def update
    reservation  = Reservation.find(params[:id])
    if reservation.update(reservation_params)
      render json: reservation
    else
      render json: {errors: reservation.errors}, status: 422
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:name, :last_name, :loyalty_member, :room_id)
  end
end
