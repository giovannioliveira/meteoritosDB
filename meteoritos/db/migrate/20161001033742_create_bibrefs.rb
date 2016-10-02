class CreateBibrefs < ActiveRecord::Migration
  def change
    create_table :bibrefs do |t|
      t.string :author
      t.string :publication
      t.integer :year
      t.string :url

      t.timestamps null: false
    end
  end
end
