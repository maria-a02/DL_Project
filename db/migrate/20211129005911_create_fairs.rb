class CreateFairs < ActiveRecord::Migration[5.2]
  def change
    create_table :fairs do |t|
      t.string :name
      t.string :description
      t.string :main_street
      t.string :first_street
      t.string :second_street
      t.string :commune
      t.string :day
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
