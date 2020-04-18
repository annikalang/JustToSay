class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :photo
      t.string :role
      t.string :company
      t.string :department

      t.timestamps
    end
  end
end
