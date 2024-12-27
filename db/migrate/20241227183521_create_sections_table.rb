class CreateSectionsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :sections, id: :uuid do |t|
      t.string :name, null: false
      t.integer :order, null: false
      t.timestamps
    end
  end
end
