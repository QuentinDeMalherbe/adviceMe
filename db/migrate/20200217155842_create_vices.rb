class CreateVices < ActiveRecord::Migration[5.2]
  def change
    create_table :vices do |t|
      t.string :name
      t.string :category
      t.text :description
      t.date :disponibility
      t.string :address
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
