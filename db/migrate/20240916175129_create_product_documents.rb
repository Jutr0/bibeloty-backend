class CreateProductDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :product_documents, id: :uuid do |t|
      t.references :document, null: false, foreign_key: true, type: :uuid
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.integer :position, null: false

      t.timestamps
    end
  end
end
