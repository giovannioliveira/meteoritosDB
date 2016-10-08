class CreateSpecimenTransactions < ActiveRecord::Migration
  def change
    create_table :specimen_transactions do |t|
      t.references :specimen, index: true, foreign_key: true
      t.string :code
      t.string :transaction_type
      t.date :transaction_date
      t.decimal :mass_balance
      t.references :party, index: true, foreign_key: true
      t.references :counterparty, index: true, foreign_key: true
      t.string :description
      t.string :transaction_status

      t.timestamps null: false
    end
  end
end
