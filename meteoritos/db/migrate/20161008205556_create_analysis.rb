class CreateAnalysis < ActiveRecord::Migration
  def change
    create_table :analysis do |t|
      t.references :meteorite, index: true, foreign_key: true
      t.references :citation, index: true, foreign_key: true
      t.text :notes

      t.timestamps null: false
    end
  end
end
