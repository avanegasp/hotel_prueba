require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
    test "reservation is not created without a name" do
      article = Reservation.new
      assert_not reservation.save
    end
  end
