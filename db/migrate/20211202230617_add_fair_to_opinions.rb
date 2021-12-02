class AddFairToOpinions < ActiveRecord::Migration[5.2]
  def change
    add_reference :opinions, :fair, foreign_key: true
  end
end
