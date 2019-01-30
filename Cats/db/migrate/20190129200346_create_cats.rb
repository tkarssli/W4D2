class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.timestamps
      t.date :birth_date, null: false
      t.string :color, null: false
      t.string :name, null: false
      t.string :sex, null: false
      t.text :description, null: false
    end
    add_index :cats, :name
  end
end
