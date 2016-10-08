class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :image_type
      t.references :meteorite, index: true, foreign_key: true
      t.references :specimen, index: true, foreign_key: true
      t.binary :image
      t.string :description
      t.references :citation, index: true, foreign_key: true
      t.string :tags

      t.timestamps null: false
    end
  end
end
