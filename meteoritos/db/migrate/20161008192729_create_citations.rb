class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.string :ctype
      t.string :authors
      t.string :title
      t.string :year
      t.string :url
      t.text :notes

      t.timestamps null: false
    end
  end
end
