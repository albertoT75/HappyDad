class AddStarsToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :stars, :integer

end
