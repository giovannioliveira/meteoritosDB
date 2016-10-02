class CreateElemAnalyses < ActiveRecord::Migration
  def change
    create_table :elem_analyses do |t|
      t.references :analysis, index: true, foreign_key: true
      t.string :elem
      t.float :val

      t.timestamps null: false
    end
  end
end
