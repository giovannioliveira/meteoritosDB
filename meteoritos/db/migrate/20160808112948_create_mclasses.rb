class CreateMclasses < ActiveRecord::Migration
  def change
    create_table :mclasses do |t|
      t.references :mtype, index: true, foreign_key: true
      t.string :mclass

      t.timestamps null: false
    end
  end
end
