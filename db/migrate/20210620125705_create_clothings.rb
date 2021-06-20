class CreateClothings < ActiveRecord::Migration[6.0]
  def change
    create_table :clothings do |t|
      t.string :type
      t.string :brand
      t.string :size
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
