# == Schema Information
#
# Table name: product_materials
#
#  id          :uuid             not null, primary key
#  material_id :uuid             not null
#  product_id  :uuid             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class ProductMaterial < ApplicationRecord
  belongs_to :material
  belongs_to :product
end
