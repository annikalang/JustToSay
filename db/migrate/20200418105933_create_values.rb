class CreateValues < ActiveRecord::Migration[6.0]
  def change
    create_table :values do |t|
      t.text :name

      t.timestamps
    end
  end
end
