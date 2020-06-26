class Day < ApplicationRecord
  belongs_to :reservation
  has_many :comments
end
