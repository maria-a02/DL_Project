class AddRatingToOpinions < ActiveRecord::Migration[5.2]
  def change
    add_column :opinions, :rating, :integer
  end
end
