class AddDaysForeignKey < ActiveRecord::Migration[5.2]
  def change
    add_reference :days, :reservation, foreign_key: true
  end
end
