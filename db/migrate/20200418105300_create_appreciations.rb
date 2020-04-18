class CreateAppreciations < ActiveRecord::Migration[6.0]
  def change
    create_table :appreciations do |t|
      t.reference :employee
      t.text :message

      t.timestamps
    end
  end
end
