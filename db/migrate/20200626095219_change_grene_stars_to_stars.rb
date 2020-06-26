class ChangeGreneStarsToStars < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :green_stars, :stars
  end
end
