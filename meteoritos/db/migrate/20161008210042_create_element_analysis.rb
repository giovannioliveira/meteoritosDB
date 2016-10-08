class CreateElementAnalysis < ActiveRecord::Migration
  def change
    create_table :element_analysis do |t|
      t.references :analysis, index: true, foreign_key: true
      t.string :element
      t.float :min
      t.float :max

      t.timestamps null: false
    end
  end
end
