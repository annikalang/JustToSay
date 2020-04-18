class CreateReceivedAppreciations < ActiveRecord::Migration[6.0]
  def change
    create_table :received_appreciations do |t|
      t.references :appreciation, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
