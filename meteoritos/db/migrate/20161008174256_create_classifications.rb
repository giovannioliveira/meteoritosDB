class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :mtype
      t.string :mcategory
      t.string :mclass
      t.string :mclan
      t.string :mgroup

    end
  end
end
