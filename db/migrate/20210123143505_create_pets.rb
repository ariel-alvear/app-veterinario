class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.date :birthdate
      t.belongs_to :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
