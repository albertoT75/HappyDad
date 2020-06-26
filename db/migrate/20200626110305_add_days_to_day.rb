class AddDaysToDay < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :monday, :string
    add_column :days, :tuesday, :string
    add_column :days, :wednesday, :string
    add_column :days, :thursday, :string
    add_column :days, :friday, :string
    add_column :days, :saturday, :string
    add_column :days, :sunday, :string
  end
end
