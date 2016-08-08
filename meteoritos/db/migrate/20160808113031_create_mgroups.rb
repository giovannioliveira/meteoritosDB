class CreateMgroups < ActiveRecord::Migration
  def change
    create_table :mgroups do |t|
      t.references :mclass, index: true, foreign_key: true
      t.string :mgroup

      t.timestamps null: false
    end
  end
end
