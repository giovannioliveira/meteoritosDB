class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
      t.references :meteorite, index: true, foreign_key: true
      t.references :bibref, index: true, foreign_key: true
      t.string :info

      t.timestamps null: false
    end
  end
end
