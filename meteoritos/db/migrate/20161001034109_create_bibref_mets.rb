class CreateBibrefMets < ActiveRecord::Migration
  def change
    create_table :bibref_mets do |t|
      t.references :bibref, index: true, foreign_key: true
      t.references :met, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
