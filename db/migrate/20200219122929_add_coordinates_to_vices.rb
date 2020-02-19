class AddCoordinatesToVices < ActiveRecord::Migration[5.2]
  def change
    add_column :vices, :latitude, :float
    add_column :vices, :longitude, :float
  end
end
