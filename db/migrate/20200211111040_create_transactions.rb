class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :source_account, null: false, foreign_key: { to_table: 'users' }
      t.references :destination_account, null: false, foreign_key: { to_table: 'users' }
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
