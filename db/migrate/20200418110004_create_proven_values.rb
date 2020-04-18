class CreateProvenValues < ActiveRecord::Migration[6.0]
  def change
    create_table :proven_values do |t|
      t.references :appreciation, null: false, foreign_key: true
      t.references :value, null: false, foreign_key: true

      t.timestamps
    end
  end
end
