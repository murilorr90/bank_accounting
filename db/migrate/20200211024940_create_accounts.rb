class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true, unique: true
      t.decimal :value, :precision => 8, :scale => 2, :default => 0

      t.timestamps
    end
  end
end
