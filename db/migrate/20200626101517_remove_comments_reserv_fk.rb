class RemoveCommentsReservFk < ActiveRecord::Migration[5.2]
  def change
    remove_reference :comments, :reservation, foreign_key: true
  end
end
