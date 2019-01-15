require 'test_helper'

class ReservationTest < ActiveSupport::TestCase

    test "reservation is not created without a name" do
      assert_equal"Angie",reservations(:guest).name
    end

end
