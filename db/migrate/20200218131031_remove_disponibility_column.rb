class RemoveDisponibilityColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :vices, :disponibility
  end
end
