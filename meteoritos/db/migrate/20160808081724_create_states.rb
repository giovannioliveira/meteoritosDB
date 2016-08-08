class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :code
      t.float :lat
      t.float :lon

      t.timestamps null: false
    end
  end
end
