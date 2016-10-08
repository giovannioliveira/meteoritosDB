class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.string :institution
      t.string :department
      t.string :role
      t.string :address
      t.references :location, index: true, foreign_key: true
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :email

      t.timestamps null: false
    end
  end
end
