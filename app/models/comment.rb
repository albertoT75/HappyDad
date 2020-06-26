class Comment < ApplicationRecord
  belongs_to :day

  validates :rating, inclusion: { in: 1..5 }

end

