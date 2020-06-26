class RemoveStarsColors < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :red_stars, :integer
    remove_column :reservations, :yellow_stars, :integer
  end
end
