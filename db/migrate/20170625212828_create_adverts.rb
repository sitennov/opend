class CreateAdverts < ActiveRecord::Migration[5.1]
  def change
    create_table :adverts do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.integer :age, null: false

      t.timestamps
    end
  end
end
