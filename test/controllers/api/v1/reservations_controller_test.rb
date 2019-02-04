require 'test_helper'

class Api::V1::ReservationsControllerTest < ActionDispatch::IntegrationTest
    test "get index: is successful" do
      get api_v1_reservations_path
    assert_response :success
  end

  test "reservation create: creates an reservation"
    assert_difference 'Reservation.count', 1 do
      post api_v1_reservations_path, params: { reservation: { name: "Alejo", published: false, last_name:"Escobar", loyalty_member: false, room_id:1 } }
  end
end
