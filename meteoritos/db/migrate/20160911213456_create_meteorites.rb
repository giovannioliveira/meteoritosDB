class CreateMeteorites < ActiveRecord::Migration
  def change
    create_table :meteorites do |t|
      t.string :cod
      t.string :extcod
      t.string :name
      t.string :synonyms
      t.date :fall_date
      t.boolean :observed
      t.references :group, index: true, foreign_key: true
      t.references :country, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true
      t.float :mass
      t.float :lat
      t.float :lon
      t.string :info

      t.timestamps null: false
    end
  end
end
