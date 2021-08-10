class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :station_name
      t.integer :time
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
