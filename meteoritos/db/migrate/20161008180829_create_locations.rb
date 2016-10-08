class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :country_code
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
    end
  end
end
