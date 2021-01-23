class CreatePetHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_histories do |t|
      t.integer :weight
      t.integer :height
      t.string :diagnosis
      t.text :description
      t.belongs_to :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
