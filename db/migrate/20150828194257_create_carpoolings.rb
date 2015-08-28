class CreateCarpoolings < ActiveRecord::Migration
  def change
    create_table :carpoolings do |t|
      t.string :name
      t.string :telephone
      t.integer :age
      t.string :location_selection
      t.string :destination_location
      t.date :travel_date
      t.time :from
      t.time :to
      t.text :notes

      t.timestamps null: false
    end
  end
end
