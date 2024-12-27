class AddSectionIdToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :section, foreign_key: true, type: :uuid
    section = Section.create!(name: "Biżuteria")

    Product.update_all(section_id: section.id)

    change_column_null :products, :section_id, false
  end
end
