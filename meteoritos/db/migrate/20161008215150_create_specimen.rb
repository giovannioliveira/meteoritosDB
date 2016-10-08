class CreateSpecimen < ActiveRecord::Migration
  def change
    create_table :specimen do |t|
      t.references :meteorite, index: true, foreign_key: true
      t.string :code
      t.boolean :active
      t.boolean :type_specimen
      t.string :accession
      t.string :initial_mass
      t.text :description
      t.text :notes

      t.timestamps null: false
    end
  end
end
