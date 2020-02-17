class CreateConferences < ActiveRecord::Migration[5.2]
  def change
    create_table :conferences do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.references :vice, foreign_key: true
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end
