class AddViceToRating < ActiveRecord::Migration[5.2]
  def change
    add_reference :rating, :vice, foreign_key: true
  end
end
