class Guest < ApplicationRecord
  has_many :rooms, dependent: :destroy
  validates :name, presence: true
  validates :last_name, presence: true
end
