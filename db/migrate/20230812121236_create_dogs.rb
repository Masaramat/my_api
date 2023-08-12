class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :license
      t.string :breed
      t.string :color
      t.string :name
      t.integer :zip
      t.integer :expiry

      t.timestamps
    end
  end
end
