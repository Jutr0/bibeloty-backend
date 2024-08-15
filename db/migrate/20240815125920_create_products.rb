class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :price, null: false
      t.references :category, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
