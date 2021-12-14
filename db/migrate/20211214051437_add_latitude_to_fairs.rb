class AddLatitudeToFairs < ActiveRecord::Migration[5.2]
  def change
    add_column :fairs, :latitude, :float
  end
end
