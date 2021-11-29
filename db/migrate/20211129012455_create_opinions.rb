class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.string :title
      t.string :comment
      t.string :rating

      t.timestamps
    end
  end
end
