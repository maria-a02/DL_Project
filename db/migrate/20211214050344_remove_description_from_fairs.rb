class RemoveDescriptionFromFairs < ActiveRecord::Migration[5.2]
  def change
    remove_column :fairs, :description, :string
  end
end
