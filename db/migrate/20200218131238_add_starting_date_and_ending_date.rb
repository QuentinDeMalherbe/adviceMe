class AddStartingDateAndEndingDate < ActiveRecord::Migration[5.2]
  def change
    add_column :vices, :starting_date, :date
    add_column :vices, :ending_date, :date
  end
end
