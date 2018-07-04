class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.text :name
      t.integer :age
      t.integer :sex
      t.text :mail
      t.text :favorite

      t.timestamps
    end
  end
end
