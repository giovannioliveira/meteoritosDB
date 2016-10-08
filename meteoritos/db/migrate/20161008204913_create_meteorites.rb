class CreateMeteorites < ActiveRecord::Migration
  def change
    create_table :meteorites do |t|
      t.string :code
      t.string :altcode
      t.string :name
      t.string :altname
      t.references :classification, index: true, foreign_key: true
      t.float :mass
      t.boolean :fall
      t.date :event_date
      t.references :location, index: true, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude
      t.string :url
      t.text :notes

      t.timestamps null: false
    end
  end
end
