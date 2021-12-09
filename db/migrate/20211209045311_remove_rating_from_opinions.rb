class RemoveRatingFromOpinions < ActiveRecord::Migration[5.2]
  def change
    remove_column :opinions, :rating
  end
end
