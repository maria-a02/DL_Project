class AddUserToOpinions < ActiveRecord::Migration[5.2]
  def change
    add_reference :opinions, :user, foreign_key: true
  end
end
