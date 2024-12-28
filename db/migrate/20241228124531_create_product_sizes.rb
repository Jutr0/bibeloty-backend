class CreateProductSizes < ActiveRecord::Migration[7.0]
  def change
    create_table :product_sizes, id: :uuid do |t|
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.string :size, null: false

      t.timestamps
    end
  end
end
