class CreateMtypes < ActiveRecord::Migration
  def change
    create_table :mtypes do |t|
      t.string :mtype

      t.timestamps null: false
    end
  end
end
