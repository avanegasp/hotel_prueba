class Reservation < ApplicationRecord
  belongs_to :room
  validates :name, presence: true
  validates :last_name, presence: true
end
