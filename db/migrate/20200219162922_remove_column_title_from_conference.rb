class RemoveColumnTitleFromConference < ActiveRecord::Migration[5.2]
  def change
    remove_column :conferences, :title
  end
end
