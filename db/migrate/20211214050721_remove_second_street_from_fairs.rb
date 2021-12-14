class RemoveSecondStreetFromFairs < ActiveRecord::Migration[5.2]
  def change
    remove_column :fairs, :second_street, :string
  end
end
