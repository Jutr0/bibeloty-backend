class CreateProductMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :product_materials, id: :uuid do |t|
      t.references :material, null: false, foreign_key: true, type: :uuid
      t.references :product, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
