class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.references :user_id, null: false, foreign_key: true
      t.decimal :value, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
