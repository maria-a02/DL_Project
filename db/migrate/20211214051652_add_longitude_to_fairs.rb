class AddLongitudeToFairs < ActiveRecord::Migration[5.2]
  def change
    add_column :fairs, :longitude, :float
  end
end
