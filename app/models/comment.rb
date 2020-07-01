class Comment < ApplicationRecord
  belongs_to :reservation

  validates :rating, inclusion: { in: 1..5 }

end

